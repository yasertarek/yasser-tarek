INSERT INTO
    `brands` (
        `id`,
        `name_en`,
        `name_ar`,
        `image`,
        `status`,
        `created_at`,
        `updated_at`
    )
VALUES
    (
        NULL,
        'Samsung',
        'سامسونج',
        'samsung.png',
        '1',
        '2021-11-18 09:10:26',
        '2021-11-18 09:10:26'
    ),
    (
        NULL,
        'DELL',
        'ديل',
        'dell.png',
        '1',
        '2021-11-18 09:10:26',
        '2021-11-18 09:10:26'
    ),
    (
        NULL,
        'Lenovo',
        'لينوفو',
        'lenovo.png',
        '1',
        '2021-11-18 09:10:26',
        '2021-11-18 09:10:26'
    ),
    (
        NULL,
        'apple',
        'ابل',
        'apple.png',
        '1',
        '2021-11-18 09:10:26',
        '2021-11-18 09:10:26'
    ),
    (
        NULL,
        'oppo',
        'oppo',
        'oppo.png',
        '1',
        '2021-11-24 04:57:47',
        '2021-11-24 04:57:47'
    ),
    (
        NULL,
        'lg',
        'lg',
        'lg.png',
        '1',
        '2021-11-24 04:57:47',
        '2021-11-24 04:57:47'
    ),
    (
        NULL,
        'HP',
        'HP',
        'hp.png',
        '1',
        '2022-02-23 09:24:06',
        '2022-02-23 09:24:06'
    ),
    (
        NULL,
        'ASUS',
        'ASUS',
        'asus.png',
        '1',
        '2022-02-23 09:24:06',
        '2022-02-23 09:24:06'
    );

INSERT INTO
    `categories` (
        `id`,
        `name_ar`,
        `name_en`,
        `image`,
        `status`,
        `created_at`,
        `updated_at`
    )
VALUES
    (
        NULL,
        'ادوات كهربائية',
        'electorinics',
        'default.jpg',
        '1',
        '2021-11-17 10:05:23',
        '2021-11-17 10:10:48'
    ),
    (
        NULL,
        'مطبخ',
        'kitchen',
        'default.jpg',
        '1',
        '2021-11-18 09:54:51',
        '2021-11-18 09:54:51'
    ),
    (
        NULL,
        'سوبرماركت',
        'supermarket',
        'default.jpg',
        '1',
        '2022-02-23 07:26:47',
        '2022-02-23 07:26:47'
    ),
    (
        NULL,
        'موضة وازياء',
        'fashion',
        'default.jpg',
        '1',
        '2022-02-23 07:26:47',
        '2022-02-23 07:26:47'
    );

INSERT INTO
    `subcategories` (
        `id`,
        `name_en`,
        `name_ar`,
        `image`,
        `status`,
        `categories_id`,
        `created_at`,
        `updated_at`
    )
VALUES
    (
        '1',
        'laptops',
        'لابتوبات',
        'default.png',
        '1',
        '1',
        '2021-11-18 09:09:38',
        '2021-11-24 04:54:39'
    ),
    (
        '2',
        'mobiles',
        'موبايلات',
        'default.png',
        '1',
        '1',
        '2021-11-18 09:09:38',
        '2021-11-18 09:09:38'
    ),
    (
        '3',
        'desktop',
        'كمبيوتر',
        'default.png',
        '1',
        '1',
        '2021-11-18 09:09:38',
        '2021-11-18 09:09:38'
    ),
    (
        '4',
        'tv',
        'تلفزيونات',
        'default.png',
        '1',
        '1',
        '2021-11-18 09:13:41',
        '2021-11-18 09:13:41'
    ),
    (
        '5',
        'chepsi',
        'شيبسي',
        'default.png',
        '1',
        '3',
        '2021-11-24 04:56:26',
        '2021-11-24 04:56:26'
    ),
    (
        '6',
        'makeup',
        'ادوات تجميل',
        '1.png',
        '1',
        '4',
        '2022-02-23 07:28:06',
        '2022-02-23 07:28:06'
    ),
    (
        '7',
        'cheese',
        'جبن',
        'cheese.png',
        '1',
        '3',
        '2022-02-23 09:11:01',
        '2022-02-23 09:11:01'
    ),
    (
        '8',
        'toys',
        'العاب اطفال',
        '1',
        '0',
        NULL,
        '2022-07-23 13:31:39',
        '2022-07-27 10:26:00'
    );

INSERT INTO
    `products`(
        `id`,
        `name_en`,
        `name_ar`,
        `code`,
        `image`,
        `quantity`,
        `price`,
        `details_en`,
        `details_ar`,
        `status`,
        `brands_id`,
        `subcategories_id`,
        `created_at`,
        `updated_at`
    )
VALUES
(
        NULL,
        'laptop',
        'لابتوب',
        '12345',
        'dell.jpg',
        '1',
        '250.00',
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has su',
        'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام طريقة لوريم إيبسوم لأنها تعطي توزيعاَ طبيعياَ -إلى حد ما- للأحرف عوضاً عن استخدام \"هن',
        '1',
        '1',
        '1',
        '2021-11-18 09:13:16',
        '2021-11-29 07:33:02'
    ),
(
        NULL,
        'a 50',
        'a 50',
        '321244',
        'a50.jpg',
        '1',
        '4000.00',
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has su',
        'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام طريقة لوريم إيبسوم لأنها تعطي توزيعاَ طبيعياَ -إلى حد ما- للأحرف عوضاً عن استخدام \"هن',
        '0',
        '1',
        '2',
        '2021-11-18 09:13:16',
        '2022-07-23 13:51:08'
    ),
(
        NULL,
        'tv 55 inch',
        'tv 55 inch',
        '55525',
        'tv55.jpg',
        '1',
        '10000.00',
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has su',
        'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام طريقة لوريم إيبسوم لأنها تعطي توزيعاَ طبيعياَ -إلى حد ما- للأحرف عوضاً عن استخدام \"هن',
        '1',
        '1',
        '4',
        '2021-11-18 09:13:16',
        '2022-07-23 13:51:15'
    ),
(
        NULL,
        'MacBook PRo',
        'MacBook PRo',
        '52524',
        'mac.jpg',
        '2',
        '40000.00',
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has su',
        'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام طريقة لوريم إيبسوم لأنها تعطي توزيعاَ طبيعياَ -إلى حد ما- للأحرف عوضاً عن استخدام \"هن',
        '1',
        '4',
        '1',
        '2021-09-22 04:07:40',
        '2022-07-23 13:51:27'
    ),
(
        NULL,
        's21',
        's21',
        '123213',
        's21.jpg',
        '10',
        '15000.00',
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has su',
        'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام طريقة لوريم إيبسوم لأنها تعطي توزيعاَ طبيعياَ -إلى حد ما- للأحرف عوضاً عن استخدام \"هن',
        '1',
        '1',
        '2',
        '2021-09-22 04:07:40',
        '2022-07-23 13:51:31'
    ),
(
        NULL,
        'iphone 13',
        'iphone 13',
        '12525',
        'iphone13.jpg',
        '20',
        '25000.00',
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has su',
        'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام طريقة لوريم إيبسوم لأنها تعطي توزيعاَ طبيعياَ -إلى حد ما- للأحرف عوضاً عن استخدام \"هنا يوجد محتوى نصي، هنا يوجد محتوى نصي\" فتجعلها تبدو (أي الأحرف) وكأنها نص مقروء. العديد من برامح النشر المكتبي وبرامح تحرير صفحات الويب تستخدم لوريم إيبسوم بشكل إفتراضي كنموذج عن النص، وإذا قمت بإدخال \"lorem ipsum\" في أي محرك بحث ستظهر العديد من المواقع الحديثة العهد في نتائج البحث. على مدى السنين ظهرت نسخ جديدة ومختلفة من نص لوريم إيبسوم، أحياناً عن طريق الصدفة، وأحياناً عن عمد كإدخال بعض العبارات الفكاهية إليها.\r\n\r\n',
        '1',
        '4',
        '2',
        '2021-09-22 04:07:40',
        '2022-07-23 13:51:49'
    ),
(
        NULL,
        'Reno 6',
        'Reno 6',
        '4444',
        'reno.jpg',
        '5',
        '10000.00',
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has su',
        'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام طريقة لوريم إيبسوم لأنها تعطي توزيعاَ طبيعياَ -إلى حد ما- للأحرف عوضاً عن استخدام \"هنا يوجد محتوى نصي، هنا يوجد محتوى نصي\" فتجعلها تبدو (أي الأحرف) وكأنها نص مقروء. العديد من برامح النشر المكتبي وبرامح تحرير صفحات الويب تستخدم لوريم إيبسوم بشكل إفتراضي كنموذج عن النص، وإذا قمت بإدخال \"lorem ipsum\" في أي محرك بحث ستظهر العديد من المواقع الحديثة العهد في نتائج البحث. على مدى السنين ظهرت نسخ جديدة ومختلفة من نص لوريم إيبسوم، أحياناً عن طريق الصدفة، وأحياناً عن عمد كإدخال بعض العبارات الفكاهية إليها.\r\n\r\n',
        '1',
        '5',
        '2',
        '2021-09-22 04:07:40',
        '2022-07-23 13:51:58'
    ),
(
        NULL,
        'Lenovo Lapttop',
        'Lenovo Lapttop',
        '7754',
        'lenovo.jpg',
        '1',
        '17000.00',
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has su',
        'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام طريقة لوريم إيبسوم لأنها تعطي توزيعاَ طبيعياَ -إلى حد ما- للأحرف عوضاً عن استخدام \"هنا يوجد محتوى نصي، هنا يوجد محتوى نصي\" فتجعلها تبدو (أي الأحرف) وكأنها نص مقروء. العديد من برامح النشر المكتبي وبرامح تحرير صفحات الويب تستخدم لوريم إيبسوم بشكل إفتراضي كنموذج عن النص، وإذا قمت بإدخال \"lorem ipsum\" في أي محرك بحث ستظهر العديد من المواقع الحديثة العهد في نتائج البحث. على مدى السنين ظهرت نسخ جديدة ومختلفة من نص لوريم إيبسوم، أحياناً عن طريق الصدفة، وأحياناً عن عمد كإدخال بعض العبارات الفكاهية إليها.\r\n\r\nهناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام طريقة لوريم إيبسوم لأنها تعطي توزيعاَ طبيعياَ -إلى حد ما- للأحرف عوضاً عن استخدام \"هنا يوجد محتوى نصي، هنا يوجد محتوى نصي\" فتجعلها تبدو (أي الأحرف) وكأنها نص مقروء. العديد من برامح النشر المكتبي وبرامح تحرير صفحات الويب تستخدم لوريم إيبسوم بشكل إفتراضي كنموذج عن النص، وإذا قمت بإدخال \"lorem ipsum\" في أي محرك بحث ستظهر العديد من المواقع الحديثة العهد في نتائج البحث. على مدى السنين ظهرت نسخ جديدة ومختلفة من نص لوريم إيبسوم، أحياناً عن طريق الصدفة، وأحياناً عن عمد كإدخال بعض العبارات الفكاهية إليها.\r\n\r\n',
        '1',
        '3',
        '1',
        '2021-09-22 04:07:40',
        '2022-07-23 13:52:05'
    ),
(
        NULL,
        'Dell Laptop',
        'Dell Laptop',
        '42424',
        'dell.jpg',
        '0',
        '20000.00',
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has su',
        'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام طريقة لوريم إيبسوم لأنها تعطي توزيعاَ طبيعياَ -إلى حد ما- للأحرف عوضاً عن استخدام \"هنا يوجد محتوى نصي، هنا يوجد محتوى نصي\" فتجعلها تبدو (أي الأحرف) وكأنها نص مقروء. العديد من برامح النشر المكتبي وبرامح تحرير صفحات الويب تستخدم لوريم إيبسوم بشكل إفتراضي كنموذج عن النص، وإذا قمت بإدخال \"lorem ipsum\" في أي محرك بحث ستظهر العديد من المواقع الحديثة العهد في نتائج البحث. على مدى السنين ظهرت نسخ جديدة ومختلفة من نص لوريم إيبسوم، أحياناً عن طريق الصدفة، وأحياناً عن عمد كإدخال بعض العبارات الفكاهية إليها.\r\n\r\n',
        '1',
        '2',
        '1',
        '2021-09-22 04:07:40',
        '2022-07-23 13:52:11'
    ),
(
        NULL,
        'Lg TV',
        'Lg TV',
        '5545',
        'lg.jpg',
        '3',
        '12000.00',
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has su',
        'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام طريقة لوريم إيبسوم لأنها تعطي توزيعاَ طبيعياَ -إلى حد ما- للأحرف عوضاً عن استخدام \"هنا يوجد محتوى نصي، هنا يوجد محتوى نصي\" فتجعلها تبدو (أي الأحرف) وكأنها نص مقروء. العديد من برامح النشر المكتبي وبرامح تحرير صفحات الويب تستخدم لوريم إيبسوم بشكل إفتراضي كنموذج عن النص، وإذا قمت بإدخال \"lorem ipsum\" في أي محرك بحث ستظهر العديد من المواقع الحديثة العهد في نتائج البحث. على مدى السنين ظهرت نسخ جديدة ومختلفة من نص لوريم إيبسوم، أحياناً عن طريق الصدفة، وأحياناً عن عمد كإدخال بعض العبارات الفكاهية إليها.\r\n\r\n',
        '1',
        '6',
        '4',
        '2021-09-22 04:07:40',
        '2022-07-23 13:52:22'
    ),
(
        NULL,
        'Samsung Tv',
        'Samsung Tv',
        '7777',
        'samsung.jpg',
        '7',
        '15000.00',
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has su',
        'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام طريقة لوريم إيبسوم لأنها تعطي توزيعاَ طبيعياَ -إلى حد ما- للأحرف عوضاً عن استخدام \"هنا يوجد محتوى نصي، هنا يوجد محتوى نصي\" فتجعلها تبدو (أي الأحرف) وكأنها نص مقروء. العديد من برامح النشر المكتبي وبرامح تحرير صفحات الويب تستخدم لوريم إيبسوم بشكل إفتراضي كنموذج عن النص، وإذا قمت بإدخال \"lorem ipsum\" في أي محرك بحث ستظهر العديد من المواقع الحديثة العهد في نتائج البحث. على مدى السنين ظهرت نسخ جديدة ومختلفة من نص لوريم إيبسوم، أحياناً عن طريق الصدفة، وأحياناً عن عمد كإدخال بعض العبارات الفكاهية إليها.\r\n\r\n',
        '1',
        '1',
        '4',
        '2021-09-22 04:07:40',
        '2022-07-23 13:52:28'
    ),
(
        NULL,
        'Chepsi',
        'Chepsi',
        '4247',
        'chepsi.jpg',
        '0',
        '10.00',
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has su',
        'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام طريقة لوريم إيبسوم لأنها تعطي توزيعاَ طبيعياَ -إلى حد ما- للأحرف عوضاً عن استخدام \"هنا يوجد محتوى نصي، هنا يوجد محتوى نصي\" فتجعلها تبدو (أي الأحرف) وكأنها نص مقروء. العديد من برامح النشر المكتبي وبرامح تحرير صفحات الويب تستخدم لوريم إيبسوم بشكل إفتراضي كنموذج عن النص، وإذا قمت بإدخال \"lorem ipsum\" في أي محرك بحث ستظهر العديد من المواقع الحديثة العهد في نتائج البحث. على مدى السنين ظهرت نسخ جديدة ومختلفة من نص لوريم إيبسوم، أحياناً عن طريق الصدفة، وأحياناً عن عمد كإدخال بعض العبارات الفكاهية إليها.\r\n\r\n',
        '1',
        NULL,
        '5',
        '2021-09-22 04:07:40',
        '2022-07-23 13:52:51'
    ),
(
        NULL,
        'samsung a70',
        'سامسونج 70',
        '29112021',
        'a50.jpg',
        '5',
        '2500.00',
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has su',
        'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام طريقة لوريم إيبسوم لأنها تعطي توزيعاَ طبيعياَ -إلى حد ما- للأحرف عوضاً عن استخدام \"هنا يوجد محتوى نصي، هنا يوجد محتوى نصي\" فتجعلها تبدو (أي الأحرف) وكأنها نص مقروء. العديد من برامح النشر المكتبي وبرامح تحرير صفحات الويب تستخدم لوريم إيبسوم بشكل إفتراضي كنموذج عن النص، وإذا قمت بإدخال \"lorem ipsum\" في أي محرك بحث ستظهر العديد من المواقع الحديثة العهد في نتائج البحث. على مدى السنين ظهرت نسخ جديدة ومختلفة من نص لوريم إيبسوم، أحياناً عن طريق الصدفة، وأحياناً عن عمد كإدخال بعض العبارات الفكاهية إليها.\r\n\r\n',
        '1',
        '1',
        '2',
        '2021-11-29 06:21:36',
        '2022-07-23 13:52:57'
    ),
(
        NULL,
        'feta cheese',
        'جبنة فيتا',
        '1100',
        'feta.png',
        '100',
        '5.00',
        'description',
        'تفاصيل',
        '1',
        NULL,
        '7',
        '2022-02-23 09:11:17',
        '2022-07-23 13:53:06'
    );

INSERT INTO
    `specs` (`id`, `name`)
VALUES
    (NULL, 'color'),
    (NULL, 'storage'),
    (NULL, 'ram'),
    (NULL, 'weight'),
    (NULL, 'size'),
    (NULL, 'screen'),
    (NULL, 'made in'),
    (NULL, 'width'),
    (NULL, 'flavor'),
    (NULL, 'camera');

INSERT INTO
    `product_spec` (`spec_id`, `product_id`, `value`)
VALUES
    ('1', '6', 'Blue'),
    ('2', '6', '256 Gbytes'),
    ('3', '6', '6 G ram'),
    ('10', '6', '32 MPixel'),
    ('4', '16', '60 g'),
    ('7', '16', 'Egypt'),
    ('9', '16', 'cheese');

INSERT INTO
    `reviews` (
        `user_id`,
        `product_id`,
        `rate`,
        `comment`,
        `created_at`,
        `updated_at`
    )
VALUES
    (
        '22',
        '6',
        '1',
        NULL,
        '2022-07-27 13:44:16',
        NULL
    ),
    (
        '23',
        '6',
        '3',
        'kwis',
        '2022-07-27 13:44:16',
        '2022-07-27 13:44:51'
    ),
    (
        '24',
        '6',
        '5',
        'gamed',
        '2022-07-27 13:44:16',
        NULL
    ),
    (
        '23',
        '5',
        '4',
        NULL,
        '2022-07-27 13:44:16',
        NULL
    ),
    (
        '22',
        '4',
        '0',
        NULL,
        '2022-07-27 13:44:16',
        NULL
    ),
    (
        '24',
        '4',
        '2',
        '7lw',
        '2022-07-27 13:44:16',
        NULL
    );