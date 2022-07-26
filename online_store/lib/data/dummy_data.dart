

// list of products
import 'package:online_store/models/product.dart';

List<Map<String,dynamic>> products = [
 {
    'id': 1,
    'price': 59,
    'title': "سماعات لاسلكية",
    'subTitle': "جودة صوت عالية",
    'image': "assets/images/airpod.png",
    'description':
        "لوريم ايبسوم دولار سيت أميت ,كونسيكتيتور أدايبا يسكينج أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.",
  },

 { 
    'id': 2,
    'price': 1099,
    'title': "جهاز موبايل",
    'subTitle': "وأصبح للموبايل قوة",
    'image': "assets/images/mobile.png",
    'description':
        "لوريم ايبسوم دولار سيت أميت ,كونسيكتيتور أدايبا يسكينج أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.",
  },
  {
    'id': 3,
    'price': 39,
    'title': "نظارات ثلاثية الأبعاد",
    'subTitle': "لنقلك للعالم الافتراضي",
    'image': "assets/images/class.png",
    'description':
        "لوريم ايبسوم دولار سيت أميت ,كونسيكتيتور أدايبا يسكينج أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.",
  },
  {
    'id': 4,
    'price': 56,
    'title': "سماعات",
    'subTitle': "لساعات استماع طويلة",
    'image': "assets/images/headset.png",
    'description':
        "لوريم ايبسوم دولار سيت أميت ,كونسيكتيتور أدايبا يسكينج أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.",
  },
  {
    'id': 5,
    'price': 68,
    'title': "مسجل صوت",
    'subTitle': "سجل اللحظات المهمة حولك",
    'image': "assets/images/speaker.png",
    'description':
        "لوريم ايبسوم دولار سيت أميت ,كونسيكتيتور أدايبا يسكينج أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.",
  },
  {
    'id': 6,
    'price': 39,
    'title': "كاميرات كمبيوتر",
    'subTitle': "بجودة ودقة صورة عالية",
    'image': "assets/images/camera.png",
    'description':
        "لوريم ايبسوم دولار سيت أميت ,كونسيكتيتور أدايبا يسكينج أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.",
 },
];
List <Product> list = products.map((e) => Product.fromJson(e)).toList();