-- Ingredients categories: خضار, لحوم, ألبان, بهارات, حبوب, فواكه, أسماك, زيوت, أخرى

INSERT INTO ingredients (name_ar, name_en, category, unit) VALUES
-- خضار
('طماطم', 'tomato', 'خضار', 'حبة'),
('بصل', 'onion', 'خضار', 'حبة'),
('ثوم', 'garlic', 'خضار', 'فص'),
('بطاطس', 'potato', 'خضار', 'حبة'),
('جزر', 'carrot', 'خضار', 'حبة'),
('كوسة', 'zucchini', 'خضار', 'حبة'),
('باذنجان', 'eggplant', 'خضار', 'حبة'),
('فلفل أخضر', 'green pepper', 'خضار', 'حبة'),
('فلفل أحمر', 'red pepper', 'خضار', 'حبة'),
('سبانخ', 'spinach', 'خضار', 'حزمة'),
('ملوخية', 'molokhia', 'خضار', 'حزمة'),
('خيار', 'cucumber', 'خضار', 'حبة'),
('خس', 'lettuce', 'خضار', 'رأس'),
('بقدونس', 'parsley', 'خضار', 'حزمة'),
('كزبرة', 'cilantro', 'خضار', 'حزمة'),
('نعناع', 'mint', 'خضار', 'حزمة'),
('ليمون', 'lemon', 'خضار', 'حبة'),
('بامية', 'okra', 'خضار', 'كجم'),
('فاصوليا خضراء', 'green beans', 'خضار', 'كجم'),
('بازلاء', 'peas', 'خضار', 'كجم'),
('قرنبيط', 'cauliflower', 'خضار', 'رأس'),
('ملفوف', 'cabbage', 'خضار', 'رأس'),
('ورق عنب', 'grape leaves', 'خضار', 'علبة'),
('فطر', 'mushroom', 'خضار', 'كجم'),
('ذرة', 'corn', 'خضار', 'كوز'),

-- لحوم
('دجاج', 'chicken', 'لحوم', 'كجم'),
('لحم مفروم', 'ground beef', 'لحوم', 'كجم'),
('لحم مكعبات', 'beef cubes', 'لحوم', 'كجم'),
('كفتة', 'kofta', 'لحوم', 'كجم'),
('سجق', 'sausage', 'لحوم', 'كجم'),
('كبدة', 'liver', 'لحوم', 'كجم'),
('ضأن', 'lamb', 'لحوم', 'كجم'),

-- أسماك
('سمك', 'fish', 'أسماك', 'كجم'),
('جمبري', 'shrimp', 'أسماك', 'كجم'),
('سلمون', 'salmon', 'أسماك', 'كجم'),

-- ألبان وبيض
('بيض', 'eggs', 'ألبان', 'حبة'),
('زبدة', 'butter', 'ألبان', 'ملعقة'),
('زيت', 'oil', 'ألبان', 'ملعقة'),
('حليب', 'milk', 'ألبان', 'كوب'),
('كريمة', 'cream', 'ألبان', 'كوب'),
('جبن موتزاريلا', 'mozzarella', 'ألبان', 'كجم'),
('جبن فيتا', 'feta cheese', 'ألبان', 'كجم'),
('جبن رومي', 'romi cheese', 'ألبان', 'كجم'),
('لبن زبادي', 'yogurt', 'ألبان', 'كوب'),
('قشطة', 'cream', 'ألبان', 'علبة'),

-- حبوب ونشويات
('أرز', 'rice', 'حبوب', 'كوب'),
('مكرونة', 'pasta', 'حبوب', 'علبة'),
('شعرية', 'vermicelli', 'حبوب', 'كوب'),
('خبز', 'bread', 'حبوب', 'رغيف'),
('دقيق', 'flour', 'حبوب', 'كوب'),
('عدس', 'lentils', 'حبوب', 'كوب'),
('حمص', 'chickpeas', 'حبوب', 'كوب'),
('فول', 'fava beans', 'حبوب', 'كوب'),
('برغل', 'bulgur', 'حبوب', 'كوب'),
('سميد', 'semolina', 'حبوب', 'كوب'),
('شوفان', 'oats', 'حبوب', 'كوب'),

-- بهارات
('ملح', 'salt', 'بهارات', 'ملعقة'),
('فلفل أسود', 'black pepper', 'بهارات', 'ملعقة'),
('كمون', 'cumin', 'بهارات', 'ملعقة'),
('كزبرة جافة', 'coriander', 'بهارات', 'ملعقة'),
('كركم', 'turmeric', 'بهارات', 'ملعقة'),
('بهارات مشكلة', 'mixed spices', 'بهارات', 'ملعقة'),
('قرفة', 'cinnamon', 'بهارات', 'عود'),
('ورق لوري', 'bay leaf', 'بهارات', 'ورقة'),
('هيل', 'cardamom', 'بهارات', 'حبة'),
('زنجبيل', 'ginger', 'بهارات', 'ملعقة'),
('شطة', 'chili', 'بهارات', 'ملعقة'),
('بابريكا', 'paprika', 'بهارات', 'ملعقة'),
('ماجي', 'maggi', 'بهارات', 'مكعب'),
('دقة', 'duqqa', 'بهارات', 'ملعقة'),

-- زيوت وصلصات
('زيت زيتون', 'olive oil', 'زيوت', 'ملعقة'),
('زيت نباتي', 'vegetable oil', 'زيوت', 'ملعقة'),
('صلصة طماطم', 'tomato sauce', 'زيوت', 'كوب'),
('معجون طماطم', 'tomato paste', 'زيوت', 'ملعقة'),
('خل', 'vinegar', 'زيوت', 'ملعقة'),
('دبس رمان', 'pomegranate molasses', 'زيوت', 'ملعقة'),
('طحينة', 'tahini', 'زيوت', 'كوب'),
('مايونيز', 'mayonnaise', 'زيوت', 'ملعقة'),

-- فواكه ومكسرات
('عنب', 'grapes', 'فواكه', 'كجم'),
('تفاح', 'apple', 'فواكه', 'حبة'),
('موز', 'banana', 'فواكه', 'حبة'),
('برتقال', 'orange', 'فواكه', 'حبة'),
('مشمش', 'apricot', 'فواكه', 'كجم'),
('تين', 'figs', 'فواكه', 'حبة'),
('لوز', 'almonds', 'فواكه', 'كوب'),
('جوز', 'walnuts', 'فواكه', 'كوب'),
('صنوبر', 'pine nuts', 'فواكه', 'ملعقة'),
('زبيب', 'raisins', 'فواكه', 'ملعقة'),

-- مكملات
('سكر', 'sugar', 'أخرى', 'ملعقة'),
('عسل', 'honey', 'أخرى', 'ملعقة'),
('فانيليا', 'vanilla', 'أخرى', 'ملعقة'),
('خميرة', 'yeast', 'أخرى', 'ملعقة'),
('بيكنج بودر', 'baking powder', 'أخرى', 'ملعقة'),
('ماء', 'water', 'أخرى', 'كوب'),
('مرق دجاج', 'chicken broth', 'أخرى', 'كوب'),
('مرق لحم', 'beef broth', 'أخرى', 'كوب'),
('جوز الهند', 'coconut', 'أخرى', 'كوب');

-- =========== RECIPES ===========

-- 1. كشري
INSERT INTO recipes (title_ar, description_ar, cuisine, difficulty, prep_time, cook_time, servings, instructions_ar)
VALUES ('كشري مصري', 'أكلة مصرية شهيرة تتكون من أرز ومكرونة وعدس وخلطة الدقة', 'egyptian', 'medium', 15, 45, 6,
ARRAY[
  'اسلق العدس البني في ماء مغلي لمدة 20 دقيقة',
  'اطبخ الأرز مع الشعرية في زيت لمدة 5 دقائق ثم أضف الماء واتركه ينضج',
  'اسلق المكرونة في ماء مغلي وملح',
  'اقلي البصل في زيت غزير حتى يصبح ذهبي مقرمش',
  'للدقة: اخلط الثوم المهروس مع الخل والكمون والملح',
  'قدم الكشري بترتيب: أرز ثم مكرونة ثم عدس ثم دقة ثم بصل مقرمش'
]);

INSERT INTO recipe_ingredients (recipe_id, ingredient_id, quantity, unit, quantity_2, quantity_4, quantity_6)
VALUES
(1, (SELECT id FROM ingredients WHERE name_ar='أرز'), 1.5, 'كوب', 0.75, 1.5, 2),
(1, (SELECT id FROM ingredients WHERE name_ar='مكرونة'), 1, 'علبة', 0.5, 1, 1.5),
(1, (SELECT id FROM ingredients WHERE name_ar='عدس'), 1, 'كوب', 0.5, 1, 1.5),
(1, (SELECT id FROM ingredients WHERE name_ar='شعرية'), 0.5, 'كوب', 0.25, 0.5, 0.75),
(1, (SELECT id FROM ingredients WHERE name_ar='بصل'), 3, 'حبة', 2, 3, 4),
(1, (SELECT id FROM ingredients WHERE name_ar='ثوم'), 4, 'فص', 2, 4, 6),
(1, (SELECT id FROM ingredients WHERE name_ar='كمون'), 1, 'ملعقة', 0.5, 1, 1.5),
(1, (SELECT id FROM ingredients WHERE name_ar='خل'), 2, 'ملعقة', 1, 2, 3),
(1, (SELECT id FROM ingredients WHERE name_ar='زيت نباتي'), 0.5, 'كوب', 0.25, 0.5, 0.75),
(1, (SELECT id FROM ingredients WHERE name_ar='ملح'), 1, 'ملعقة', 0.5, 1, 1.5),
(1, (SELECT id FROM ingredients WHERE name_ar='ماء'), 4, 'كوب', 2, 4, 6);

-- 2. ملوخية
INSERT INTO recipes (title_ar, description_ar, cuisine, difficulty, prep_time, cook_time, servings, instructions_ar)
VALUES ('ملوخية بالدجاج', 'شوربة ملوخية خضراء بالدجاج والأرز', 'egyptian', 'medium', 20, 50, 4,
ARRAY[
  'اسلق الدجاج مع بصل وورق لوري وملح حتى ينضج',
  'صف الدجاج واحتفظ بالمرق',
  'في طاسة على النار، حمص الثوم المفروم مع الكزبرة الجافة في زبدة',
  'أضف الملوخية المفرومة إلى مرق الدجاج المغلي',
  'قلب لمدة 5 دقائق ثم أضف التحميرة (الثوم والكزبرة)',
  'قدم الملوخية مع الأرز الأبيض والدجاج'
]);

INSERT INTO recipe_ingredients (recipe_id, ingredient_id, quantity, unit, quantity_2, quantity_4, quantity_6)
VALUES
(2, (SELECT id FROM ingredients WHERE name_ar='ملوخية'), 1, 'حزمة', 0.5, 1, 1.5),
(2, (SELECT id FROM ingredients WHERE name_ar='دجاج'), 1, 'كجم', 0.5, 1, 1.5),
(2, (SELECT id FROM ingredients WHERE name_ar='ثوم'), 6, 'فص', 4, 6, 8),
(2, (SELECT id FROM ingredients WHERE name_ar='كزبرة جافة'), 1, 'ملعقة', 0.5, 1, 1.5),
(2, (SELECT id FROM ingredients WHERE name_ar='زبدة'), 2, 'ملعقة', 1, 2, 3),
(2, (SELECT id FROM ingredients WHERE name_ar='بصل'), 1, 'حبة', 0.5, 1, 1.5),
(2, (SELECT id FROM ingredients WHERE name_ar='ورق لوري'), 2, 'ورقة', 1, 2, 3),
(2, (SELECT id FROM ingredients WHERE name_ar='ملح'), 1, 'ملعقة', 0.5, 1, 1.5),
(2, (SELECT id FROM ingredients WHERE name_ar='ماء'), 4, 'كوب', 2, 4, 6),
(2, (SELECT id FROM ingredients WHERE name_ar='أرز'), 1.5, 'كوب', 0.75, 1.5, 2);

-- 3. فول مدمس
INSERT INTO recipes (title_ar, description_ar, cuisine, difficulty, prep_time, cook_time, servings, instructions_ar)
VALUES ('فول مدمس مصري', 'الفول المدمس مع الطحينة والليمون والكمون', 'egyptian', 'easy', 5, 15, 2,
ARRAY[
  'سخن الفول المدمس في طنجرة على نار متوسطة',
  'اهرس الفول نصف هرس بالشوكة',
  'اخلط الطحينة مع عصير الليمون والخل والملح',
  'أضف الخليط إلى الفول وقلب جيداً',
  'زين بالكمون والبقدونس المفروم وزيت الزيتون',
  'قدم مع الخبز البلدي'
]);

INSERT INTO recipe_ingredients (recipe_id, ingredient_id, quantity, unit, quantity_2, quantity_4, quantity_6)
VALUES
(3, (SELECT id FROM ingredients WHERE name_ar='فول'), 2, 'كوب', 1, 2, 3),
(3, (SELECT id FROM ingredients WHERE name_ar='طحينة'), 2, 'ملعقة', 1, 2, 3),
(3, (SELECT id FROM ingredients WHERE name_ar='ليمون'), 1, 'حبة', 0.5, 1, 1.5),
(3, (SELECT id FROM ingredients WHERE name_ar='خل'), 1, 'ملعقة', 0.5, 1, 1.5),
(3, (SELECT id FROM ingredients WHERE name_ar='كمون'), 1, 'ملعقة', 0.5, 1, 1.5),
(3, (SELECT id FROM ingredients WHERE name_ar='زيت زيتون'), 1, 'ملعقة', 0.5, 1, 1.5),
(3, (SELECT id FROM ingredients WHERE name_ar='ثوم'), 2, 'فص', 1, 2, 3),
(3, (SELECT id FROM ingredients WHERE name_ar='ملح'), 0.5, 'ملعقة', 0.25, 0.5, 1),
(3, (SELECT id FROM ingredients WHERE name_ar='بقدونس'), 0.5, 'حزمة', 0.25, 0.5, 0.75);

-- 4. طعمية (فلافل)
INSERT INTO recipes (title_ar, description_ar, cuisine, difficulty, prep_time, cook_time, servings, instructions_ar)
VALUES ('طعمية مصرية (فلافل)', 'طعمية مصرية مقرمشة من الفول المدشوش', 'egyptian', 'hard', 30, 20, 6,
ARRAY[
  'انقع الفول المدشوش في ماء لمدة 4 ساعات ثم صف',
  'اطحن الفول مع البصل والثوم والكزبرة والبقدونس',
  'أضف الملح والكمون والبهارات وقلب جيداً',
  'سخن زيت غزير للقلي',
  'شكل العجينة إلى أقراص',
  'اقليها في الزيت الساخن حتى تذبل
  'قدمها مع الخبز والطحينة والسلطة'
]);

INSERT INTO recipe_ingredients (recipe_id, ingredient_id, quantity, unit, quantity_2, quantity_4, quantity_6)
VALUES
(4, (SELECT id FROM ingredients WHERE name_ar='فول'), 2, 'كوب', 1, 2, 3),
(4, (SELECT id FROM ingredients WHERE name_ar='بصل'), 1, 'حبة', 0.5, 1, 1.5),
(4, (SELECT id FROM ingredients WHERE name_ar='ثوم'), 4, 'فص', 2, 4, 6),
(4, (SELECT id FROM ingredients WHERE name_ar='كزبرة'), 1, 'حزمة', 0.5, 1, 1.5),
(4, (SELECT id FROM ingredients WHERE name_ar='بقدونس'), 1, 'حزمة', 0.5, 1, 1.5),
(4, (SELECT id FROM ingredients WHERE name_ar='كمون'), 1.5, 'ملعقة', 1, 1.5, 2),
(4, (SELECT id FROM ingredients WHERE name_ar='بهارات مشكلة'), 1, 'ملعقة', 0.5, 1, 1.5),
(4, (SELECT id FROM ingredients WHERE name_ar='زيت نباتي'), 2, 'كوب', 1, 2, 3),
(4, (SELECT id FROM ingredients WHERE name_ar='ملح'), 1, 'ملعقة', 0.5, 1, 1.5);

-- 5. محشي ورق عنب
INSERT INTO recipes (title_ar, description_ar, cuisine, difficulty, prep_time, cook_time, servings, instructions_ar)
VALUES ('محشي ورق عنب', 'ورق عنب محشي بأرز ولحمة مفرومة', 'egyptian', 'hard', 60, 90, 6,
ARRAY[
  'سلق ورق العنب في ماء مغلي لمدة دقيقتين',
  'اخلط الأرز مع اللحم المفروم والطماطم المفرومة والبقدونس',
  'أضف الملح والبهارات والسمنة',
  'احشي ورق العنب ولفه بإحكام',
  'رتب الحشو في طنجرة ثقيلة القاع',
  'أضف مرق اللحم واتركه على نار هادئة لمدة ساعة ونصف',
  'قدم مع لبن الزبادي'
]);

INSERT INTO recipe_ingredients (recipe_id, ingredient_id, quantity, unit, quantity_2, quantity_4, quantity_6)
VALUES
(5, (SELECT id FROM ingredients WHERE name_ar='ورق عنب'), 1, 'علبة', 0.5, 1, 1.5),
(5, (SELECT id FROM ingredients WHERE name_ar='أرز'), 2, 'كوب', 1, 2, 3),
(5, (SELECT id FROM ingredients WHERE name_ar='لحم مفروم'), 0.5, 'كجم', 0.25, 0.5, 0.75),
(5, (SELECT id FROM ingredients WHERE name_ar='طماطم'), 2, 'حبة', 1, 2, 3),
(5, (SELECT id FROM ingredients WHERE name_ar='بقدونس'), 0.5, 'حزمة', 0.25, 0.5, 0.75),
(5, (SELECT id FROM ingredients WHERE name_ar='بصل'), 1, 'حبة', 0.5, 1, 1.5),
(5, (SELECT id FROM ingredients WHERE name_ar='بهارات مشكلة'), 1, 'ملعقة', 0.5, 1, 1.5),
(5, (SELECT id FROM ingredients WHERE name_ar='ملح'), 1, 'ملعقة', 0.5, 1, 1.5),
(5, (SELECT id FROM ingredients WHERE name_ar='ليمون'), 2, 'حبة', 1, 2, 3),
(5, (SELECT id FROM ingredients WHERE name_ar='ماء'), 3, 'كوب', 1.5, 3, 4.5);

-- 6. مسقعة
INSERT INTO recipes (title_ar, description_ar, cuisine, difficulty, prep_time, cook_time, servings, instructions_ar)
VALUES ('مسقعة باذنجان', 'باذنجان مقلي مع صلصة طماطم ولحم مفروم', 'egyptian', 'medium', 20, 40, 4,
ARRAY[
  'قطع الباذنجان حلقات وانقعه في ماء مملح لمدة 15 دقيقة',
  'اقلي الباذنجان في زيت حتى يذبل
  'في طاسة أخرى، اشوح اللحم المفروم مع البصل والثوم',
  'أضف صلصة الطماطم والملح والبهارات',
  'في صينية الفرن، رتب طبقات الباذنجان واللحم',
  'أدخل الفرن لمدة 20 دقيقة',
  'قدم مع الأرز الأبيض'
]);

INSERT INTO recipe_ingredients (recipe_id, ingredient_id, quantity, unit, quantity_2, quantity_4, quantity_6)
VALUES
(6, (SELECT id FROM ingredients WHERE name_ar='باذنجان'), 4, 'حبة', 2, 4, 6),
(6, (SELECT id FROM ingredients WHERE name_ar='لحم مفروم'), 0.5, 'كجم', 0.25, 0.5, 0.75),
(6, (SELECT id FROM ingredients WHERE name_ar='بصل'), 2, 'حبة', 1, 2, 3),
(6, (SELECT id FROM ingredients WHERE name_ar='ثوم'), 3, 'فص', 2, 3, 4),
(6, (SELECT id FROM ingredients WHERE name_ar='صلصة طماطم'), 1, 'كوب', 0.5, 1, 1.5),
(6, (SELECT id FROM ingredients WHERE name_ar='زيت نباتي'), 0.5, 'كوب', 0.25, 0.5, 0.75),
(6, (SELECT id FROM ingredients WHERE name_ar='ملح'), 1, 'ملعقة', 0.5, 1, 1.5),
(6, (SELECT id FROM ingredients WHERE name_ar='بهارات مشكلة'), 1, 'ملعقة', 0.5, 1, 1.5),
(6, (SELECT id FROM ingredients WHERE name_ar='فلفل أسود'), 0.5, 'ملعقة', 0.25, 0.5, 1);

-- 7. شوربة عدس
INSERT INTO recipes (title_ar, description_ar, cuisine, difficulty, prep_time, cook_time, servings, instructions_ar)
VALUES ('شوربة عدس', 'شوربة عدس مصرية دافئة بالكمون', 'egyptian', 'easy', 10, 35, 4,
ARRAY[
  'اغسل العدس وصفيه',
  'في طنجرة، اشوح البصل المفروم في زيت',
  'أضف العدس والجزر المبشور والماء',
  'اتركه يغلي ثم هدئ النار لمدة 30 دقيقة',
  'تبل بالملح والكمون والبهارات',
  'قدمها ساخنة مع الليمون'
]);

INSERT INTO recipe_ingredients (recipe_id, ingredient_id, quantity, unit, quantity_2, quantity_4, quantity_6)
VALUES
(7, (SELECT id FROM ingredients WHERE name_ar='عدس'), 1.5, 'كوب', 0.75, 1.5, 2),
(7, (SELECT id FROM ingredients WHERE name_ar='بصل'), 1, 'حبة', 0.5, 1, 1.5),
(7, (SELECT id FROM ingredients WHERE name_ar='جزر'), 1, 'حبة', 0.5, 1, 1.5),
(7, (SELECT id FROM ingredients WHERE name_ar='كمون'), 1, 'ملعقة', 0.5, 1, 1.5),
(7, (SELECT id FROM ingredients WHERE name_ar='زيت نباتي'), 2, 'ملعقة', 1, 2, 3),
(7, (SELECT id FROM ingredients WHERE name_ar='ملح'), 1, 'ملعقة', 0.5, 1, 1.5),
(7, (SELECT id FROM ingredients WHERE name_ar='ماء'), 5, 'كوب', 2.5, 5, 7.5),
(7, (SELECT id FROM ingredients WHERE name_ar='ليمون'), 1, 'حبة', 0.5, 1, 1.5);

-- 8. مكرونة بالبشاميل
INSERT INTO recipes (title_ar, description_ar, cuisine, difficulty, prep_time, cook_time, servings, instructions_ar)
VALUES ('مكرونة بالبشاميل', 'مكرونة بالبشاميل واللحم المفروم - الأكلة المحبوبة', 'egyptian', 'medium', 20, 45, 6,
ARRAY[
  'اسلق المكرونة في ماء مغلي وملح',
  'اشوح اللحم المفروم مع البصل والثوم والبهارات',
  'أضف صلصة الطماطم واتركها',
  'للبشاميل: ذوب الزبدة وأضف الدقيق والحليب والملح',
  'في صينية: طبقة مكرونة ثم لحم ثم بشاميل',
  'أدخل الفرن على 180 درجة لمدة 30 دقيقة حتى تحمر'
]);

INSERT INTO recipe_ingredients (recipe_id, ingredient_id, quantity, unit, quantity_2, quantity_4, quantity_6)
VALUES
(8, (SELECT id FROM ingredients WHERE name_ar='مكرونة'), 1, 'علبة', 0.5, 1, 1.5),
(8, (SELECT id FROM ingredients WHERE name_ar='لحم مفروم'), 0.5, 'كجم', 0.25, 0.5, 0.75),
(8, (SELECT id FROM ingredients WHERE name_ar='بصل'), 1, 'حبة', 0.5, 1, 1.5),
(8, (SELECT id FROM ingredients WHERE name_ar='ثوم'), 2, 'فص', 1, 2, 3),
(8, (SELECT id FROM ingredients WHERE name_ar='زبدة'), 3, 'ملعقة', 1.5, 3, 4.5),
(8, (SELECT id FROM ingredients WHERE name_ar='دقيق'), 3, 'ملعقة', 1.5, 3, 4.5),
(8, (SELECT id FROM ingredients WHERE name_ar='حليب'), 3, 'كوب', 1.5, 3, 4.5),
(8, (SELECT id FROM ingredients WHERE name_ar='صلصة طماطم'), 0.5, 'كوب', 0.25, 0.5, 0.75),
(8, (SELECT id FROM ingredients WHERE name_ar='ملح'), 1, 'ملعقة', 0.5, 1, 1.5),
(8, (SELECT id FROM ingredients WHERE name_ar='بهارات مشكلة'), 1, 'ملعقة', 0.5, 1, 1.5);

-- 9. صينية بطاطس باللحم
INSERT INTO recipes (title_ar, description_ar, cuisine, difficulty, prep_time, cook_time, servings, instructions_ar)
VALUES ('صينية بطاطس باللحم', 'بطاطس شرائح باللحم المفروم وصلصة الطماطم', 'egyptian', 'medium', 15, 50, 4,
ARRAY[
  'قشر البطاطس وقطعه شرائح رفيعة',
  'اقلي البطاطس في زيت حتى يذبل',
  'اشوح اللحم المفروم مع البصل والثوم',
  'أضف صلصة الطماطم والملح والبهارات',
  'في صينية: رتب البطاطس واللحم في طبقات',
  'أضف كوب مرق وغطي الصينية',
  'أدخل الفرن على 180 لمدة 40 دقيقة'
]);

INSERT INTO recipe_ingredients (recipe_id, ingredient_id, quantity, unit, quantity_2, quantity_4, quantity_6)
VALUES
(9, (SELECT id FROM ingredients WHERE name_ar='بطاطس'), 5, 'حبة', 3, 5, 7),
(9, (SELECT id FROM ingredients WHERE name_ar='لحم مفروم'), 0.5, 'كجم', 0.25, 0.5, 0.75),
(9, (SELECT id FROM ingredients WHERE name_ar='بصل'), 1, 'حبة', 0.5, 1, 1.5),
(9, (SELECT id FROM ingredients WHERE name_ar='ثوم'), 3, 'فص', 2, 3, 4),
(9, (SELECT id FROM ingredients WHERE name_ar='صلصة طماطم'), 1, 'كوب', 0.5, 1, 1.5),
(9, (SELECT id FROM ingredients WHERE name_ar='زيت نباتي'), 3, 'ملعقة', 1.5, 3, 4.5),
(9, (SELECT id FROM ingredients WHERE name_ar='ملح'), 1, 'ملعقة', 0.5, 1, 1.5),
(9, (SELECT id FROM ingredients WHERE name_ar='بهارات مشكلة'), 1, 'ملعقة', 0.5, 1, 1.5),
(9, (SELECT id FROM ingredients WHERE name_ar='ماء'), 1, 'كوب', 0.5, 1, 1.5);

-- 10. فراخ مشوية
INSERT INTO recipes (title_ar, description_ar, cuisine, difficulty, prep_time, cook_time, servings, instructions_ar)
VALUES ('فراخ مشوية بالفرن', 'دجاج مشوي متبل بالبهارات العربية', 'egyptian', 'easy', 15, 50, 4,
ARRAY[
  'تبل الدجاج بالملح والفلفل والبهارات والثوم والليمون',
  'أضف زيت الزيتون وقلب جيداً',
  'اتركه منقوع ساعة في التتبيلة',
  'رتب الدجاج في صينية الفرن',
  'أدخل الفرن على 200 درجة لمدة 45 دقيقة',
  'قدم مع الأرز أو الخبز والسلطة'
]);

INSERT INTO recipe_ingredients (recipe_id, ingredient_id, quantity, unit, quantity_2, quantity_4, quantity_6)
VALUES
(10, (SELECT id FROM ingredients WHERE name_ar='دجاج'), 1, 'كجم', 0.5, 1, 1.5),
(10, (SELECT id FROM ingredients WHERE name_ar='ثوم'), 4, 'فص', 2, 4, 6),
(10, (SELECT id FROM ingredients WHERE name_ar='ليمون'), 2, 'حبة', 1, 2, 3),
(10, (SELECT id FROM ingredients WHERE name_ar='زيت زيتون'), 3, 'ملعقة', 1.5, 3, 4.5),
(10, (SELECT id FROM ingredients WHERE name_ar='ملح'), 1, 'ملعقة', 0.5, 1, 1.5),
(10, (SELECT id FROM ingredients WHERE name_ar='فلفل أسود'), 0.5, 'ملعقة', 0.25, 0.5, 1),
(10, (SELECT id FROM ingredients WHERE name_ar='بهارات مشكلة'), 1, 'ملعقة', 0.5, 1, 1.5),
(10, (SELECT id FROM ingredients WHERE name_ar='بابريكا'), 1, 'ملعقة', 0.5, 1, 1.5);

-- 11. كبسة دجاج
INSERT INTO recipes (title_ar, description_ar, cuisine, difficulty, prep_time, cook_time, servings, instructions_ar)
VALUES ('كبسة دجاج سعودية', 'أرز كبسة بالدجاج والبهارات الخليجية', 'gulf', 'medium', 20, 55, 6,
ARRAY[
  'تبل الدجاج بالبهارات المشكلة والملح والثوم',
  'في طنجرة ضغط، اشوح البصل ثم أضف الدجاج',
  'أضف الماء واتركه حتى ينضج',
  'في طنجرة أخرى، اشوح الأرز مع الزيت',
  'أضف مرق الدجاج والبهارات واتركه ينضج',
  'قدم الأرز مع الدجاج والمكسرات المحمصة'
]);

INSERT INTO recipe_ingredients (recipe_id, ingredient_id, quantity, unit, quantity_2, quantity_4, quantity_6)
VALUES
(11, (SELECT id FROM ingredients WHERE name_ar='دجاج'), 1.5, 'كجم', 0.75, 1.5, 2),
(11, (SELECT id FROM ingredients WHERE name_ar='أرز'), 3, 'كوب', 1.5, 3, 4.5),
(11, (SELECT id FROM ingredients WHERE name_ar='بصل'), 2, 'حبة', 1, 2, 3),
(11, (SELECT id FROM ingredients WHERE name_ar='ثوم'), 4, 'فص', 2, 4, 6),
(11, (SELECT id FROM ingredients WHERE name_ar='بهارات مشكلة'), 2, 'ملعقة', 1, 2, 3),
(11, (SELECT id FROM ingredients WHERE name_ar='هيل'), 3, 'حبة', 2, 3, 4),
(11, (SELECT id FROM ingredients WHERE name_ar='قرفة'), 1, 'عود', 0.5, 1, 1.5),
(11, (SELECT id FROM ingredients WHERE name_ar='زبيب'), 2, 'ملعقة', 1, 2, 3),
(11, (SELECT id FROM ingredients WHERE name_ar='صنوبر'), 2, 'ملعقة', 1, 2, 3),
(11, (SELECT id FROM ingredients WHERE name_ar='زيت نباتي'), 3, 'ملعقة', 1.5, 3, 4.5),
(11, (SELECT id FROM ingredients WHERE name_ar='ملح'), 1, 'ملعقة', 0.5, 1, 1.5),
(11, (SELECT id FROM ingredients WHERE name_ar='ماء'), 5, 'كوب', 2.5, 5, 7.5);

-- 12. منسف
INSERT INTO recipes (title_ar, description_ar, cuisine, difficulty, prep_time, cook_time, servings, instructions_ar)
VALUES ('منسف أردني', 'الأكلة الأردنية الشهيرة بالأرز واللحم واللبن', 'levant', 'hard', 30, 120, 8,
ARRAY[
  'اسلق اللحم مع البهارات والملح حتى ينضج تماماً',
  'سخن اللبن الزبادي مع البيض والنشا على نار هادئة',
  'أضف مرق اللحم إلى اللبن تدريجياً',
  'اطبخ الأرز الأبيض منفرداً',
  'في طبق التقديم: رتب الخبز ثم الأرز ثم اللحم',
  'صب اللبن الساخن فوق الكل',
  'زين بالمكسرات والبقدونس'
]);

INSERT INTO recipe_ingredients (recipe_id, ingredient_id, quantity, unit, quantity_2, quantity_4, quantity_6)
VALUES
(12, (SELECT id FROM ingredients WHERE name_ar='ضأن'), 1.5, 'كجم', 0.75, 1.5, 2.5),
(12, (SELECT id FROM ingredients WHERE name_ar='أرز'), 3, 'كوب', 1.5, 3, 4.5),
(12, (SELECT id FROM ingredients WHERE name_ar='لبن زبادي'), 2, 'كوب', 1, 2, 3),
(12, (SELECT id FROM ingredients WHERE name_ar='بيض'), 2, 'حبة', 1, 2, 3),
(12, (SELECT id FROM ingredients WHERE name_ar='بصل'), 2, 'حبة', 1, 2, 3),
(12, (SELECT id FROM ingredients WHERE name_ar='ورق لوري'), 3, 'ورقة', 2, 3, 4),
(12, (SELECT id FROM ingredients WHERE name_ar='هيل'), 4, 'حبة', 2, 4, 6),
(12, (SELECT id FROM ingredients WHERE name_ar='ملح'), 1.5, 'ملعقة', 1, 1.5, 2),
(12, (SELECT id FROM ingredients WHERE name_ar='لوز'), 0.25, 'كوب', 0.125, 0.25, 0.375),
(12, (SELECT id FROM ingredients WHERE name_ar='صنوبر'), 0.25, 'كوب', 0.125, 0.25, 0.375),
(12, (SELECT id FROM ingredients WHERE name_ar='ماء'), 6, 'كوب', 3, 6, 9);

-- 13. فلافل (حمص)
INSERT INTO recipes (title_ar, description_ar, cuisine, difficulty, prep_time, cook_time, servings, instructions_ar)
VALUES ('فلافل شامية (حمص)', 'فلافل بحمص مقرمشة من المطبخ الشامي', 'levant', 'hard', 30, 20, 6,
ARRAY[
  'انقع الحمص في ماء لمدة 6 ساعات',
  'اطحن الحمص مع البصل والثوم والبقدونس',
  'أضف الملح والكمون والبهارات',
  'اقلي في زيت غزير حتى يصبح لونها ذهبي',
  'قدم مع الحمص والطحينة والخضار'
]);

INSERT INTO recipe_ingredients (recipe_id, ingredient_id, quantity, unit, quantity_2, quantity_4, quantity_6)
VALUES
(13, (SELECT id FROM ingredients WHERE name_ar='حمص'), 2, 'كوب', 1, 2, 3),
(13, (SELECT id FROM ingredients WHERE name_ar='بصل'), 1, 'حبة', 0.5, 1, 1.5),
(13, (SELECT id FROM ingredients WHERE name_ar='ثوم'), 4, 'فص', 2, 4, 6),
(13, (SELECT id FROM ingredients WHERE name_ar='بقدونس'), 1, 'حزمة', 0.5, 1, 1.5),
(13, (SELECT id FROM ingredients WHERE name_ar='كمون'), 1, 'ملعقة', 0.5, 1, 1.5),
(13, (SELECT id FROM ingredients WHERE name_ar='بهارات مشكلة'), 1, 'ملعقة', 0.5, 1, 1.5),
(13, (SELECT id FROM ingredients WHERE name_ar='ملح'), 1, 'ملعقة', 0.5, 1, 1.5),
(13, (SELECT id FROM ingredients WHERE name_ar='زيت نباتي'), 2, 'كوب', 1, 2, 3);

-- 14. تبولة
INSERT INTO recipes (title_ar, description_ar, cuisine, difficulty, prep_time, cook_time, servings, instructions_ar)
VALUES ('تبولة', 'سلطة تبولة لبنانية بالبرغل والبقدونس', 'levant', 'easy', 20, 0, 4,
ARRAY[
  'انقع البرغل في ماء بارد لمدة 15 دقيقة',
  'افرم البقدونس والنعناع والطماطم فرماً ناعماً',
  'اخلط البرغل مع الخضار المفرومة',
  'أضف عصير الليمون وزيت الزيتون والملح',
  'قدم باردة مع الخس'
]);

INSERT INTO recipe_ingredients (recipe_id, ingredient_id, quantity, unit, quantity_2, quantity_4, quantity_6)
VALUES
(14, (SELECT id FROM ingredients WHERE name_ar='برغل'), 0.5, 'كوب', 0.25, 0.5, 0.75),
(14, (SELECT id FROM ingredients WHERE name_ar='بقدونس'), 3, 'حزمة', 1.5, 3, 4.5),
(14, (SELECT id FROM ingredients WHERE name_ar='نعناع'), 0.5, 'حزمة', 0.25, 0.5, 0.75),
(14, (SELECT id FROM ingredients WHERE name_ar='طماطم'), 3, 'حبة', 1.5, 3, 4.5),
(14, (SELECT id FROM ingredients WHERE name_ar='ليمون'), 2, 'حبة', 1, 2, 3),
(14, (SELECT id FROM ingredients WHERE name_ar='زيت زيتون'), 3, 'ملعقة', 1.5, 3, 4.5),
(14, (SELECT id FROM ingredients WHERE name_ar='خس'), 1, 'رأس', 0.5, 1, 1.5),
(14, (SELECT id FROM ingredients WHERE name_ar='ملح'), 0.5, 'ملعقة', 0.25, 0.5, 1);

-- 15. حمص بطحينة
INSERT INTO recipes (title_ar, description_ar, cuisine, difficulty, prep_time, cook_time, servings, instructions_ar)
VALUES ('حمص بطحينة', 'حمص مطبوخ مع الطحينة والليمون', 'levant', 'easy', 10, 60, 6,
ARRAY[
  'انقع الحمص في ماء لمدة 6 ساعات ثم اسلقه',
  'اطحن الحمص المسلوق جيداً',
  'اخلط الطحينة مع عصير الليمون والثوم',
  'أضف الخليط إلى الحمص واخلط',
  'زين بالبقدونس وزيت الزيتون والكمون'
]);

INSERT INTO recipe_ingredients (recipe_id, ingredient_id, quantity, unit, quantity_2, quantity_4, quantity_6)
VALUES
(15, (SELECT id FROM ingredients WHERE name_ar='حمص'), 2, 'كوب', 1, 2, 3),
(15, (SELECT id FROM ingredients WHERE name_ar='طحينة'), 0.5, 'كوب', 0.25, 0.5, 0.75),
(15, (SELECT id FROM ingredients WHERE name_ar='ليمون'), 3, 'حبة', 1.5, 3, 4.5),
(15, (SELECT id FROM ingredients WHERE name_ar='ثوم'), 3, 'فص', 2, 3, 4),
(15, (SELECT id FROM ingredients WHERE name_ar='زيت زيتون'), 2, 'ملعقة', 1, 2, 3),
(15, (SELECT id FROM ingredients WHERE name_ar='كمون'), 0.5, 'ملعقة', 0.25, 0.5, 1),
(15, (SELECT id FROM ingredients WHERE name_ar='ملح'), 1, 'ملعقة', 0.5, 1, 1.5),
(15, (SELECT id FROM ingredients WHERE name_ar='بقدونس'), 0.5, 'حزمة', 0.25, 0.5, 0.75);

-- 16. مجبوس دجاج
INSERT INTO recipes (title_ar, description_ar, cuisine, difficulty, prep_time, cook_time, servings, instructions_ar)
VALUES ('مجبوس دجاج كويتي', 'أرز مجبوس بالدجاج والبهارات الخليجية', 'gulf', 'medium', 25, 60, 6,
ARRAY[
  'تبل الدجاج ببهارات المجبوس والملح',
  'اشوح البصل والثوم في الزيت',
  'أضف الدجاج وقلب حتى يحمر',
  'أضف الماء واتركه يغلي',
  'أضف الأرز واتركه على نار هادئة',
  'قدم مع دقة المجبوس والسلطة'
]);

INSERT INTO recipe_ingredients (recipe_id, ingredient_id, quantity, unit, quantity_2, quantity_4, quantity_6)
VALUES
(16, (SELECT id FROM ingredients WHERE name_ar='دجاج'), 1.5, 'كجم', 0.75, 1.5, 2),
(16, (SELECT id FROM ingredients WHERE name_ar='أرز'), 3, 'كوب', 1.5, 3, 4.5),
(16, (SELECT id FROM ingredients WHERE name_ar='بصل'), 2, 'حبة', 1, 2, 3),
(16, (SELECT id FROM ingredients WHERE name_ar='ثوم'), 4, 'فص', 2, 4, 6),
(16, (SELECT id FROM ingredients WHERE name_ar='بهارات مشكلة'), 2, 'ملعقة', 1, 2, 3),
(16, (SELECT id FROM ingredients WHERE name_ar='هيل'), 3, 'حبة', 2, 3, 4),
(16, (SELECT id FROM ingredients WHERE name_ar='ليمون'), 1, 'حبة', 0.5, 1, 1.5),
(16, (SELECT id FROM ingredients WHERE name_ar='زيت نباتي'), 3, 'ملعقة', 1.5, 3, 4.5),
(16, (SELECT id FROM ingredients WHERE name_ar='ملح'), 1, 'ملعقة', 0.5, 1, 1.5),
(16, (SELECT id FROM ingredients WHERE name_ar='ماء'), 5, 'كوب', 2.5, 5, 7.5);

-- 17. شاورما دجاج
INSERT INTO recipes (title_ar, description_ar, cuisine, difficulty, prep_time, cook_time, servings, instructions_ar)
VALUES ('شاورما دجاج', 'شاورما دجاج بالخبز والطحينة', 'levant', 'medium', 20, 20, 4,
ARRAY[
  'قطع الدجاج شرائح رفيعة طويلة',
  'تبل بالخل والبهارات والثوم والملح',
  'اتركه ساعة في التتبيلة',
  'سخن طاسة غير لاصقة على نار عالية',
  'اطبخ الدجاج مع البصل حتى ينضج',
  'قدم في خبز مع الطحينة والمخلل'
]);

INSERT INTO recipe_ingredients (recipe_id, ingredient_id, quantity, unit, quantity_2, quantity_4, quantity_6)
VALUES
(17, (SELECT id FROM ingredients WHERE name_ar='دجاج'), 1, 'كجم', 0.5, 1, 1.5),
(17, (SELECT id FROM ingredients WHERE name_ar='بصل'), 1, 'حبة', 0.5, 1, 1.5),
(17, (SELECT id FROM ingredients WHERE name_ar='ثوم'), 3, 'فص', 2, 3, 4),
(17, (SELECT id FROM ingredients WHERE name_ar='خل'), 2, 'ملعقة', 1, 2, 3),
(17, (SELECT id FROM ingredients WHERE name_ar='بهارات مشكلة'), 1.5, 'ملعقة', 1, 1.5, 2),
(17, (SELECT id FROM ingredients WHERE name_ar='خبز'), 4, 'رغيف', 2, 4, 6),
(17, (SELECT id FROM ingredients WHERE name_ar='طحينة'), 0.5, 'كوب', 0.25, 0.5, 0.75),
(17, (SELECT id FROM ingredients WHERE name_ar='ليمون'), 1, 'حبة', 0.5, 1, 1.5),
(17, (SELECT id FROM ingredients WHERE name_ar='زيت نباتي'), 3, 'ملعقة', 1.5, 3, 4.5),
(17, (SELECT id FROM ingredients WHERE name_ar='ملح'), 1, 'ملعقة', 0.5, 1, 1.5);

-- 18. سمك مقلي
INSERT INTO recipes (title_ar, description_ar, cuisine, difficulty, prep_time, cook_time, servings, instructions_ar)
VALUES ('سمك مقلي مصري', 'سمك مقلي مقرمش مع الأرز والسلطة', 'egyptian', 'medium', 15, 25, 4,
ARRAY[
  'نظف السمك جيداً وتبله بالملح والكمون والثوم',
  'غط السمك بالدقيق',
  'سخن زيت غزير في طاسة',
  'اقلي السمك حتى يصبح ذهبياً',
  'قدم مع الأرز والسلطة الخضراء'
]);

INSERT INTO recipe_ingredients (recipe_id, ingredient_id, quantity, unit, quantity_2, quantity_4, quantity_6)
VALUES
(18, (SELECT id FROM ingredients WHERE name_ar='سمك'), 1, 'كجم', 0.5, 1, 1.5),
(18, (SELECT id FROM ingredients WHERE name_ar='دقيق'), 1, 'كوب', 0.5, 1, 1.5),
(18, (SELECT id FROM ingredients WHERE name_ar='ثوم'), 4, 'فص', 2, 4, 6),
(18, (SELECT id FROM ingredients WHERE name_ar='كمون'), 1, 'ملعقة', 0.5, 1, 1.5),
(18, (SELECT id FROM ingredients WHERE name_ar='ليمون'), 2, 'حبة', 1, 2, 3),
(18, (SELECT id FROM ingredients WHERE name_ar='زيت نباتي'), 1, 'كوب', 0.5, 1, 1.5),
(18, (SELECT id FROM ingredients WHERE name_ar='ملح'), 1, 'ملعقة', 0.5, 1, 1.5);

-- 19. كفتة مشوية
INSERT INTO recipes (title_ar, description_ar, cuisine, difficulty, prep_time, cook_time, servings, instructions_ar)
VALUES ('كفتة مشوية', 'كفتة اللحم المشوية على الفحم أو الفرن', 'egyptian', 'medium', 15, 20, 4,
ARRAY[
  'اخلط اللحم المفروم مع البصل المبشور والبقدونس',
  'أضف الملح والبهارات والكمون',
  'شكل الكفتة على أسياخ',
  'اشويها على الفحم أو في الفرن',
  'قدم مع الخبز والطحينة والسلطة'
]);

INSERT INTO recipe_ingredients (recipe_id, ingredient_id, quantity, unit, quantity_2, quantity_4, quantity_6)
VALUES
(19, (SELECT id FROM ingredients WHERE name_ar='لحم مفروم'), 1, 'كجم', 0.5, 1, 1.5),
(19, (SELECT id FROM ingredients WHERE name_ar='بصل'), 1, 'حبة', 0.5, 1, 1.5),
(19, (SELECT id FROM ingredients WHERE name_ar='بقدونس'), 1, 'حزمة', 0.5, 1, 1.5),
(19, (SELECT id FROM ingredients WHERE name_ar='كمون'), 1, 'ملعقة', 0.5, 1, 1.5),
(19, (SELECT id FROM ingredients WHERE name_ar='بهارات مشكلة'), 1, 'ملعقة', 0.5, 1, 1.5),
(19, (SELECT id FROM ingredients WHERE name_ar='ملح'), 1, 'ملعقة', 0.5, 1, 1.5),
(19, (SELECT id FROM ingredients WHERE name_ar='بصل'), 1, 'حبة', 0.5, 1, 1.5);

-- 20. صيادية سمك
INSERT INTO recipes (title_ar, description_ar, cuisine, difficulty, prep_time, cook_time, servings, instructions_ar)
VALUES ('صيادية سمك', 'أرز صيادية بالسمك والبصل المقرمش', 'egyptian', 'medium', 20, 45, 4,
ARRAY[
  'تبل السمك واقليه في زيت',
  'في نفس الزيت، اشوح البصل المقطع شرائح',
  'أضف الأرز وقلب لمدة دقيقتين',
  'أضف الماء والبهارات واتركه ينضج',
  'قدم الأرز مع السمك المقلي والبصل المقرمش'
]);

INSERT INTO recipe_ingredients (recipe_id, ingredient_id, quantity, unit, quantity_2, quantity_4, quantity_6)
VALUES
(20, (SELECT id FROM ingredients WHERE name_ar='سمك'), 1, 'كجم', 0.5, 1, 1.5),
(20, (SELECT id FROM ingredients WHERE name_ar='أرز'), 2, 'كوب', 1, 2, 3),
(20, (SELECT id FROM ingredients WHERE name_ar='بصل'), 3, 'حبة', 1.5, 3, 4.5),
(20, (SELECT id FROM ingredients WHERE name_ar='زيت نباتي'), 0.75, 'كوب', 0.375, 0.75, 1),
(20, (SELECT id FROM ingredients WHERE name_ar='ملح'), 1, 'ملعقة', 0.5, 1, 1.5),
(20, (SELECT id FROM ingredients WHERE name_ar='كمون'), 1, 'ملعقة', 0.5, 1, 1.5),
(20, (SELECT id FROM ingredients WHERE name_ar='بهارات مشكلة'), 1, 'ملعقة', 0.5, 1, 1.5),
(20, (SELECT id FROM ingredients WHERE name_ar='ماء'), 4, 'كوب', 2, 4, 6);

-- 21. بامية باللحم
INSERT INTO recipes (title_ar, description_ar, cuisine, difficulty, prep_time, cook_time, servings, instructions_ar)
VALUES ('بامية باللحم', 'بامية مطبوخة مع صلصة الطماطم واللحم', 'egyptian', 'medium', 15, 50, 4,
ARRAY[
  'اشوح اللحم المكعبات مع البصل والثوم',
  'أضف الماء واترك اللحم ينضج',
  'أضف صلصة الطماطم والبهارات',
  'أضف البامية واتركها على نار هادئة',
  'قدم مع الأرز الأبيض'
]);

INSERT INTO recipe_ingredients (recipe_id, ingredient_id, quantity, unit, quantity_2, quantity_4, quantity_6)
VALUES
(21, (SELECT id FROM ingredients WHERE name_ar='بامية'), 1, 'كجم', 0.5, 1, 1.5),
(21, (SELECT id FROM ingredients WHERE name_ar='لحم مكعبات'), 0.5, 'كجم', 0.25, 0.5, 0.75),
(21, (SELECT id FROM ingredients WHERE name_ar='صلصة طماطم'), 1.5, 'كوب', 0.75, 1.5, 2),
(21, (SELECT id FROM ingredients WHERE name_ar='بصل'), 1, 'حبة', 0.5, 1, 1.5),
(21, (SELECT id FROM ingredients WHERE name_ar='ثوم'), 3, 'فص', 2, 3, 4),
(21, (SELECT id FROM ingredients WHERE name_ar='بهارات مشكلة'), 1, 'ملعقة', 0.5, 1, 1.5),
(21, (SELECT id FROM ingredients WHERE name_ar='ملح'), 1, 'ملعقة', 0.5, 1, 1.5),
(21, (SELECT id FROM ingredients WHERE name_ar='زيت نباتي'), 2, 'ملعقة', 1, 2, 3),
(21, (SELECT id FROM ingredients WHERE name_ar='ماء'), 2, 'كوب', 1, 2, 3);

-- 22. مقلوبة
INSERT INTO recipes (title_ar, description_ar, cuisine, difficulty, prep_time, cook_time, servings, instructions_ar)
VALUES ('مقلوبة فلسطينية', 'أرز مقلوب بالدجاج والخضار', 'levant', 'hard', 25, 60, 6,
ARRAY[
  'اسلق الدجاج مع البهارات',
  'اقلي الباذنجان والبطاطس والقرنبيط',
  'في طنجرة: رتب اللحم والخضار ثم الأرز',
  'أضف مرق الدجاج واتركه ينضج',
  'اقلب الطنجرة في طبق التقديم',
  'زين بالمكسرات المقلية'
]);

INSERT INTO recipe_ingredients (recipe_id, ingredient_id, quantity, unit, quantity_2, quantity_4, quantity_6)
VALUES
(22, (SELECT id FROM ingredients WHERE name_ar='دجاج'), 1, 'كجم', 0.5, 1, 1.5),
(22, (SELECT id FROM ingredients WHERE name_ar='أرز'), 3, 'كوب', 1.5, 3, 4.5),
(22, (SELECT id FROM ingredients WHERE name_ar='باذنجان'), 2, 'حبة', 1, 2, 3),
(22, (SELECT id FROM ingredients WHERE name_ar='بطاطس'), 2, 'حبة', 1, 2, 3),
(22, (SELECT id FROM ingredients WHERE name_ar='قرنبيط'), 0.5, 'رأس', 0.25, 0.5, 0.75),
(22, (SELECT id FROM ingredients WHERE name_ar='بصل'), 1, 'حبة', 0.5, 1, 1.5),
(22, (SELECT id FROM ingredients WHERE name_ar='بهارات مشكلة'), 1.5, 'ملعقة', 1, 1.5, 2),
(22, (SELECT id FROM ingredients WHERE name_ar='زيت نباتي'), 0.5, 'كوب', 0.25, 0.5, 0.75),
(22, (SELECT id FROM ingredients WHERE name_ar='ملح'), 1, 'ملعقة', 0.5, 1, 1.5),
(22, (SELECT id FROM ingredients WHERE name_ar='لوز'), 0.25, 'كوب', 0.125, 0.25, 0.375),
(22, (SELECT id FROM ingredients WHERE name_ar='ماء'), 5, 'كوب', 2.5, 5, 7.5);

-- 23. فاصوليا باللحم
INSERT INTO recipes (title_ar, description_ar, cuisine, difficulty, prep_time, cook_time, servings, instructions_ar)
VALUES ('فاصوليا خضراء باللحم', 'فاصوليا مطبوخة مع صلصة الطماطم واللحم', 'egyptian', 'medium', 15, 45, 4,
ARRAY[
  'اشوح اللحم مع البصل والثوم',
  'أضف الماء واترك اللحم ينضج',
  'أضف الفاصوليا الخضراء',
  'أضف صلصة الطماطم والبهارات',
  'اتركها على نار هادئة حتى تستوي',
  'قدم مع الأرز الأبيض'
]);

INSERT INTO recipe_ingredients (recipe_id, ingredient_id, quantity, unit, quantity_2, quantity_4, quantity_6)
VALUES
(23, (SELECT id FROM ingredients WHERE name_ar='فاصوليا خضراء'), 1, 'كجم', 0.5, 1, 1.5),
(23, (SELECT id FROM ingredients WHERE name_ar='لحم مكعبات'), 0.5, 'كجم', 0.25, 0.5, 0.75),
(23, (SELECT id FROM ingredients WHERE name_ar='صلصة طماطم'), 1, 'كوب', 0.5, 1, 1.5),
(23, (SELECT id FROM ingredients WHERE name_ar='بصل'), 1, 'حبة', 0.5, 1, 1.5),
(23, (SELECT id FROM ingredients WHERE name_ar='ثوم'), 3, 'فص', 2, 3, 4),
(23, (SELECT id FROM ingredients WHERE name_ar='بهارات مشكلة'), 1, 'ملعقة', 0.5, 1, 1.5),
(23, (SELECT id FROM ingredients WHERE name_ar='ملح'), 1, 'ملعقة', 0.5, 1, 1.5),
(23, (SELECT id FROM ingredients WHERE name_ar='زيت نباتي'), 2, 'ملعقة', 1, 2, 3),
(23, (SELECT id FROM ingredients WHERE name_ar='ماء'), 2, 'كوب', 1, 2, 3);

-- 24. محشي كوسة
INSERT INTO recipes (title_ar, description_ar, cuisine, difficulty, prep_time, cook_time, servings, instructions_ar)
VALUES ('محشي كوسة', 'كوسة محشية بأرز ولحمة مفرومة', 'egyptian', 'hard', 45, 60, 6,
ARRAY[
  'افرغ الكوسة من الداخل',
  'اخلط الأرز مع اللحم المفروم والطماطم والبهارات',
  'احشي الكوسة بالخليط',
  'رتب الكوسة في طنجرة',
  'أضف مرق الطماطم واتركه يغلي',
  'اتركه على نار هادئة لمدة ساعة'
]);

INSERT INTO recipe_ingredients (recipe_id, ingredient_id, quantity, unit, quantity_2, quantity_4, quantity_6)
VALUES
(24, (SELECT id FROM ingredients WHERE name_ar='كوسة'), 8, 'حبة', 4, 8, 12),
(24, (SELECT id FROM ingredients WHERE name_ar='أرز'), 1.5, 'كوب', 0.75, 1.5, 2),
(24, (SELECT id FROM ingredients WHERE name_ar='لحم مفروم'), 0.5, 'كجم', 0.25, 0.5, 0.75),
(24, (SELECT id FROM ingredients WHERE name_ar='طماطم'), 3, 'حبة', 1.5, 3, 4.5),
(24, (SELECT id FROM ingredients WHERE name_ar='بقدونس'), 0.5, 'حزمة', 0.25, 0.5, 0.75),
(24, (SELECT id FROM ingredients WHERE name_ar='صلصة طماطم'), 2, 'كوب', 1, 2, 3),
(24, (SELECT id FROM ingredients WHERE name_ar='بهارات مشكلة'), 1, 'ملعقة', 0.5, 1, 1.5),
(24, (SELECT id FROM ingredients WHERE name_ar='ملح'), 1, 'ملعقة', 0.5, 1, 1.5),
(24, (SELECT id FROM ingredients WHERE name_ar='ماء'), 3, 'كوب', 1.5, 3, 4.5);

-- 25. جلاش باللحم
INSERT INTO recipes (title_ar, description_ar, cuisine, difficulty, prep_time, cook_time, servings, instructions_ar)
VALUES ('جلاش باللحم', 'جلاش محشي باللحم المفروم مع البشاميل', 'egyptian', 'hard', 30, 40, 8,
ARRAY[
  'جهز حشوة اللحم المفروم مع البصل والبهارات',
  'جهز البشاميل',
  'رطب الجلاش بالزبدة',
  'ضع طبقة جلاش ثم حشوة ثم جلاش',
  'اسقي الوجه بالزبدة',
  'أدخل الفرن حتى يحمر',
  'قدم ساخناً'
]);

INSERT INTO recipe_ingredients (recipe_id, ingredient_id, quantity, unit, quantity_2, quantity_4, quantity_6)
VALUES
(25, (SELECT id FROM ingredients WHERE name_ar='دقيق'), 1, 'كوب', 0.5, 1, 1.5),
(25, (SELECT id FROM ingredients WHERE name_ar='لحم مفروم'), 1, 'كجم', 0.5, 1, 1.5),
(25, (SELECT id FROM ingredients WHERE name_ar='بصل'), 2, 'حبة', 1, 2, 3),
(25, (SELECT id FROM ingredients WHERE name_ar='زبدة'), 0.5, 'كوب', 0.25, 0.5, 0.75),
(25, (SELECT id FROM ingredients WHERE name_ar='حليب'), 3, 'كوب', 1.5, 3, 4.5),
(25, (SELECT id FROM ingredients WHERE name_ar='بهارات مشكلة'), 1, 'ملعقة', 0.5, 1, 1.5),
(25, (SELECT id FROM ingredients WHERE name_ar='ملح'), 1, 'ملعقة', 0.5, 1, 1.5);

-- 26. كنافة
INSERT INTO recipes (title_ar, description_ar, cuisine, difficulty, prep_time, cook_time, servings, instructions_ar)
VALUES ('كنافة نابلسية', 'كنافة بالجبن من المطبخ الفلسطيني', 'levant', 'hard', 30, 40, 8,
ARRAY[
  'افرم الكنافة واخلطها مع السمنة',
  'رطب الجبن وصفيه من الماء',
  'رتب نصف الكنافة في صينية',
  'أضف الجبن ثم باقي الكنافة',
  'أدخل الفرن حتى تحمر',
  'اسقيها بالشيرة (قطر) وقدم ساخنة'
]);

INSERT INTO recipe_ingredients (recipe_id, ingredient_id, quantity, unit, quantity_2, quantity_4, quantity_6)
VALUES
(26, (SELECT id FROM ingredients WHERE name_ar='سميد'), 1, 'كجم', 0.5, 1, 1.5),
(26, (SELECT id FROM ingredients WHERE name_ar='جبن موتزاريلا'), 0.5, 'كجم', 0.25, 0.5, 0.75),
(26, (SELECT id FROM ingredients WHERE name_ar='زبدة'), 0.5, 'كوب', 0.25, 0.5, 0.75),
(26, (SELECT id FROM ingredients WHERE name_ar='سكر'), 2, 'كوب', 1, 2, 3),
(26, (SELECT id FROM ingredients WHERE name_ar='ماء'), 1, 'كوب', 0.5, 1, 1.5),
(26, (SELECT id FROM ingredients WHERE name_ar='ليمون'), 0.5, 'حبة', 0.25, 0.5, 0.75);

-- 27. فتة حمص
INSERT INTO recipes (title_ar, description_ar, cuisine, difficulty, prep_time, cook_time, servings, instructions_ar)
VALUES ('فتة حمص', 'فتة الحمص باللبن والثوم', 'levant', 'medium', 15, 15, 4,
ARRAY[
  'حمص الخبز في الفرن حتى يتحمص',
  'اخلط الحمص المسلوق مع اللبن والثوم',
  'في طبق: رتب الخبز ثم الحمص ثم اللبن',
  'زين بالصنوبر المقلي والبقدونس',
  'قدم دافئة'
]);

INSERT INTO recipe_ingredients (recipe_id, ingredient_id, quantity, unit, quantity_2, quantity_4, quantity_6)
VALUES
(27, (SELECT id FROM ingredients WHERE name_ar='حمص'), 2, 'كوب', 1, 2, 3),
(27, (SELECT id FROM ingredients WHERE name_ar='خبز'), 3, 'رغيف', 1.5, 3, 4.5),
(27, (SELECT id FROM ingredients WHERE name_ar='لبن زبادي'), 2, 'كوب', 1, 2, 3),
(27, (SELECT id FROM ingredients WHERE name_ar='ثوم'), 3, 'فص', 2, 3, 4),
(27, (SELECT id FROM ingredients WHERE name_ar='صنوبر'), 2, 'ملعقة', 1, 2, 3),
(27, (SELECT id FROM ingredients WHERE name_ar='زيت زيتون'), 2, 'ملعقة', 1, 2, 3),
(27, (SELECT id FROM ingredients WHERE name_ar='ملح'), 0.5, 'ملعقة', 0.25, 0.5, 1);

-- 28. مسخن دجاج
INSERT INTO recipes (title_ar, description_ar, cuisine, difficulty, prep_time, cook_time, servings, instructions_ar)
VALUES ('مسخن دجاج فلسطيني', 'دجاج مسخن بالبصل والسماق على الخبز', 'levant', 'medium', 20, 50, 6,
ARRAY[
  'اسلق الدجاج مع البهارات',
  'في طاسة: اشوح البصل مكعبات مع زيت الزيتون',
  'أضف السماق والملح والفلفل',
  'رتب الخبز في صينية، ثم البصل ثم الدجاج',
  'أدخل الفرن لمدة 15 دقيقة',
  'قدم مع اللبن'
]);

INSERT INTO recipe_ingredients (recipe_id, ingredient_id, quantity, unit, quantity_2, quantity_4, quantity_6)
VALUES
(28, (SELECT id FROM ingredients WHERE name_ar='دجاج'), 1.5, 'كجم', 0.75, 1.5, 2),
(28, (SELECT id FROM ingredients WHERE name_ar='بصل'), 5, 'حبة', 3, 5, 7),
(28, (SELECT id FROM ingredients WHERE name_ar='خبز'), 4, 'رغيف', 2, 4, 6),
(28, (SELECT id FROM ingredients WHERE name_ar='زيت زيتون'), 0.5, 'كوب', 0.25, 0.5, 0.75),
(28, (SELECT id FROM ingredients WHERE name_ar='دبس رمان'), 2, 'ملعقة', 1, 2, 3),
(28, (SELECT id FROM ingredients WHERE name_ar='ملح'), 1, 'ملعقة', 0.5, 1, 1.5),
(28, (SELECT id FROM ingredients WHERE name_ar='فلفل أسود'), 0.5, 'ملعقة', 0.25, 0.5, 1);

-- 29. شش برك
INSERT INTO recipes (title_ar, description_ar, cuisine, difficulty, prep_time, cook_time, servings, instructions_ar)
VALUES ('شيش برك', 'عجينة محشي لحم بلبن الزبادي', 'levant', 'hard', 60, 60, 6,
ARRAY[
  'اعجن العجينة وافردها',
  'جهز حشوة اللحم المفروم مع البصل',
  'شكل الشيش برك',
  'اطبخ اللبن مع النشا والبيض',
  'أضف الشيش برك إلى اللبن',
  'اتركه يغلي لمدة 15 دقيقة',
  'قدم مع الأرز'
]);

INSERT INTO recipe_ingredients (recipe_id, ingredient_id, quantity, unit, quantity_2, quantity_4, quantity_6)
VALUES
(29, (SELECT id FROM ingredients WHERE name_ar='دقيق'), 3, 'كوب', 1.5, 3, 4.5),
(29, (SELECT id FROM ingredients WHERE name_ar='لحم مفروم'), 0.5, 'كجم', 0.25, 0.5, 0.75),
(29, (SELECT id FROM ingredients WHERE name_ar='لبن زبادي'), 2, 'كوب', 1, 2, 3),
(29, (SELECT id FROM ingredients WHERE name_ar='بيض'), 2, 'حبة', 1, 2, 3),
(29, (SELECT id FROM ingredients WHERE name_ar='بصل'), 1, 'حبة', 0.5, 1, 1.5),
(29, (SELECT id FROM ingredients WHERE name_ar='ثوم'), 3, 'فص', 2, 3, 4),
(29, (SELECT id FROM ingredients WHERE name_ar='نعناع'), 2, 'ملعقة', 1, 2, 3),
(29, (SELECT id FROM ingredients WHERE name_ar='ملح'), 1, 'ملعقة', 0.5, 1, 1.5),
(29, (SELECT id FROM ingredients WHERE name_ar='ماء'), 1, 'كوب', 0.5, 1, 1.5);

-- 30. أم علي
INSERT INTO recipes (title_ar, description_ar, cuisine, difficulty, prep_time, cook_time, servings, instructions_ar)
VALUES ('أم علي', 'حلوى مصرية شهيرة بالعجينة والمكسرات واللبن', 'egyptian', 'easy', 10, 30, 6,
ARRAY[
  'قطع العجينة (العيش) قطع صغيرة',
  'حمصها في الفرن حتى تذبل',
  'اخلط الحليب مع القشطة والسكر',
  'رتب العجين في صينية واسقيها بالخليط',
  'أضف المكسرات والزبيب',
  'أدخل الفرن لمدة 20 دقيقة حتى تحمر',
  'قدم ساخنة'
]);

INSERT INTO recipe_ingredients (recipe_id, ingredient_id, quantity, unit, quantity_2, quantity_4, quantity_6)
VALUES
(30, (SELECT id FROM ingredients WHERE name_ar='خبز'), 4, 'رغيف', 2, 4, 6),
(30, (SELECT id FROM ingredients WHERE name_ar='حليب'), 3, 'كوب', 1.5, 3, 4.5),
(30, (SELECT id FROM ingredients WHERE name_ar='قشطة'), 1, 'علبة', 0.5, 1, 1.5),
(30, (SELECT id FROM ingredients WHERE name_ar='سكر'), 1, 'كوب', 0.5, 1, 1.5),
(30, (SELECT id FROM ingredients WHERE name_ar='لوز'), 0.25, 'كوب', 0.125, 0.25, 0.375),
(30, (SELECT id FROM ingredients WHERE name_ar='جوز'), 0.25, 'كوب', 0.125, 0.25, 0.375),
(30, (SELECT id FROM ingredients WHERE name_ar='زبيب'), 2, 'ملعقة', 1, 2, 3),
(30, (SELECT id FROM ingredients WHERE name_ar='جوز الهند'), 0.25, 'كوب', 0.125, 0.25, 0.375);
