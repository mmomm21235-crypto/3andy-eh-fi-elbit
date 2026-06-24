-- Profiles (extends Supabase Auth)
CREATE TABLE profiles (
  id UUID REFERENCES auth.users PRIMARY KEY,
  name TEXT,
  created_at TIMESTAMPTZ DEFAULT NOW()
);
ALTER TABLE profiles ENABLE ROW LEVEL SECURITY;
CREATE POLICY "Users can view own profile"
  ON profiles FOR SELECT USING (auth.uid() = id);
CREATE POLICY "Users can update own profile"
  ON profiles FOR UPDATE USING (auth.uid() = id);

-- Ingredients master list
CREATE TABLE ingredients (
  id SERIAL PRIMARY KEY,
  name_ar TEXT NOT NULL UNIQUE,
  name_en TEXT,
  category TEXT NOT NULL DEFAULT 'other',
  unit TEXT NOT NULL DEFAULT 'piece'
);

ALTER TABLE ingredients ENABLE ROW LEVEL SECURITY;
CREATE POLICY "Anyone can read ingredients"
  ON ingredients FOR SELECT USING (TRUE);

-- Recipes
CREATE TABLE recipes (
  id SERIAL PRIMARY KEY,
  title_ar TEXT NOT NULL,
  title_en TEXT,
  description_ar TEXT,
  description_en TEXT,
  cuisine TEXT DEFAULT 'egyptian',
  difficulty TEXT DEFAULT 'medium',
  prep_time INT DEFAULT 0,
  cook_time INT DEFAULT 0,
  servings INT DEFAULT 4,
  instructions_ar TEXT[] NOT NULL DEFAULT '{}',
  instructions_en TEXT[] DEFAULT '{}',
  image_url TEXT,
  is_ai_generated BOOLEAN DEFAULT FALSE,
  created_at TIMESTAMPTZ DEFAULT NOW()
);

ALTER TABLE recipes ENABLE ROW LEVEL SECURITY;
CREATE POLICY "Anyone can read recipes"
  ON recipes FOR SELECT USING (TRUE);

-- Recipe ingredients junction
CREATE TABLE recipe_ingredients (
  id SERIAL PRIMARY KEY,
  recipe_id INT REFERENCES recipes(id) ON DELETE CASCADE,
  ingredient_id INT REFERENCES ingredients(id),
  quantity DECIMAL NOT NULL DEFAULT 1,
  unit TEXT NOT NULL DEFAULT 'piece',
  quantity_2 DECIMAL,
  quantity_4 DECIMAL,
  quantity_6 DECIMAL,
  is_optional BOOLEAN DEFAULT FALSE
);

ALTER TABLE recipe_ingredients ENABLE ROW LEVEL SECURITY;
CREATE POLICY "Anyone can read recipe ingredients"
  ON recipe_ingredients FOR SELECT USING (TRUE);

-- Favorites
CREATE TABLE favorites (
  id SERIAL PRIMARY KEY,
  user_id UUID REFERENCES auth.users(id) ON DELETE CASCADE,
  recipe_id INT REFERENCES recipes(id) ON DELETE CASCADE,
  created_at TIMESTAMPTZ DEFAULT NOW(),
  UNIQUE(user_id, recipe_id)
);

ALTER TABLE favorites ENABLE ROW LEVEL SECURITY;
CREATE POLICY "Users can view own favorites"
  ON favorites FOR SELECT USING (auth.uid() = user_id);
CREATE POLICY "Users can add own favorites"
  ON favorites FOR INSERT WITH CHECK (auth.uid() = user_id);
CREATE POLICY "Users can delete own favorites"
  ON favorites FOR DELETE USING (auth.uid() = user_id);

-- Meal plans
CREATE TABLE meal_plans (
  id SERIAL PRIMARY KEY,
  user_id UUID REFERENCES auth.users(id) ON DELETE CASCADE,
  week_start DATE NOT NULL,
  created_at TIMESTAMPTZ DEFAULT NOW()
);

ALTER TABLE meal_plans ENABLE ROW LEVEL SECURITY;
CREATE POLICY "Users can view own meal plans"
  ON meal_plans FOR SELECT USING (auth.uid() = user_id);
CREATE POLICY "Users can create own meal plans"
  ON meal_plans FOR INSERT WITH CHECK (auth.uid() = user_id);
CREATE POLICY "Users can delete own meal plans"
  ON meal_plans FOR DELETE USING (auth.uid() = user_id);

-- Meal plan days
CREATE TABLE meal_plan_days (
  id SERIAL PRIMARY KEY,
  meal_plan_id INT REFERENCES meal_plans(id) ON DELETE CASCADE,
  day_of_week INT NOT NULL CHECK (day_of_week BETWEEN 0 AND 6),
  meal_type TEXT NOT NULL CHECK (meal_type IN ('breakfast', 'lunch', 'dinner', 'snack')),
  recipe_id INT REFERENCES recipes(id)
);

ALTER TABLE meal_plan_days ENABLE ROW LEVEL SECURITY;
CREATE POLICY "Users can view own meal plan days"
  ON meal_plan_days FOR SELECT USING (
    EXISTS (SELECT 1 FROM meal_plans WHERE id = meal_plan_id AND user_id = auth.uid())
  );
CREATE POLICY "Users can manage own meal plan days"
  ON meal_plan_days FOR INSERT WITH CHECK (
    EXISTS (SELECT 1 FROM meal_plans WHERE id = meal_plan_id AND user_id = auth.uid())
  );
CREATE POLICY "Users can delete own meal plan days"
  ON meal_plan_days FOR DELETE USING (
    EXISTS (SELECT 1 FROM meal_plans WHERE id = meal_plan_id AND user_id = auth.uid())
  );

-- AI cached recipes
CREATE TABLE cached_ai_recipes (
  id SERIAL PRIMARY KEY,
  ingredients_hash TEXT UNIQUE NOT NULL,
  ingredient_ids INT[] NOT NULL DEFAULT '{}',
  recipe_data JSONB NOT NULL,
  created_at TIMESTAMPTZ DEFAULT NOW(),
  access_count INT DEFAULT 1
);

ALTER TABLE cached_ai_recipes ENABLE ROW LEVEL SECURITY;
CREATE POLICY "Anyone can read cached recipes"
  ON cached_ai_recipes FOR SELECT USING (TRUE);
CREATE POLICY "Anyone can insert cached recipes"
  ON cached_ai_recipes FOR INSERT WITH CHECK (TRUE);
CREATE POLICY "Anyone can update cached recipes"
  ON cached_ai_recipes FOR UPDATE USING (TRUE);
