import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'ar'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? enText = '',
    String? arText = '',
  }) =>
      [enText, arText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    final language = locale.toString();
    return FFLocalizations.languages().contains(
      language.endsWith('_')
          ? language.substring(0, language.length - 1)
          : language,
    );
  }

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // SIgnuppage
  {
    'awa5kgfq': {
      'en': 'Sign up as a Food Bank [Approval]',
      'ar': 'التسجيل كبنك طعام [موافقة]',
    },
    'ag7cjzx0': {
      'en': 'Sign Up',
      'ar': 'اشتراك',
    },
    'ndhvk4bj': {
      'en': 'Create your account',
      'ar': 'أنشئ حسابك',
    },
    '4ix7n5sm': {
      'en': 'Name',
      'ar': 'اسم',
    },
    'abb1mma6': {
      'en': 'Enter your name',
      'ar': 'أدخل أسمك',
    },
    '012atzdx': {
      'en': 'Email',
      'ar': 'بريد إلكتروني',
    },
    'l3b5hzpt': {
      'en': 'Enter your email',
      'ar': 'أدخل بريدك الإلكتروني',
    },
    'p9p49o40': {
      'en': 'Password',
      'ar': 'كلمة المرور',
    },
    '3bqwoge9': {
      'en': 'Enter your password',
      'ar': 'ادخل رقمك السري',
    },
    'oma0nbjv': {
      'en': 'Confirm Password',
      'ar': 'تأكيد كلمة المرور',
    },
    '5kikj7jd': {
      'en': 'Retype Password',
      'ar': 'أعد إدخال كلمة السر',
    },
    'fk0mstte': {
      'en': 'Already have an account? Sign In',
      'ar': 'هل لديك حساب؟ تسجيل الدخول',
    },
    'z40iozt9': {
      'en': 'Create Account',
      'ar': 'إنشاء حساب',
    },
    '4xjgckah': {
      'en': 'Google Sign up',
      'ar': 'قم بالتسجيل في جوجل',
    },
    'egdgousy': {
      'en':
          'Remember if you previously logged in using Google then please go to login page, do not use the Google sign up button here.',
      'ar':
          'تذكر أنه إذا قمت بتسجيل الدخول مسبقًا باستخدام Google، فيرجى الانتقال إلى صفحة تسجيل الدخول، ولا تستخدم زر تسجيل Google هنا.',
    },
  },
  // login
  {
    'vsosa0mz': {
      'en': 'Welcome Back!',
      'ar': 'مرحبًا بعودتك!',
    },
    '1y3d7snv': {
      'en': 'Please sign in to continue.',
      'ar': 'من فضلك سجل دخولك للمتابعة.',
    },
    '6jv1nrvb': {
      'en': 'Email',
      'ar': 'بريد إلكتروني',
    },
    'bbrtkaws': {
      'en': 'Enter your email',
      'ar': 'أدخل بريدك الإلكتروني',
    },
    '8j8wyajw': {
      'en': 'Password',
      'ar': 'كلمة المرور',
    },
    'o9a0iwbw': {
      'en': 'Enter your password',
      'ar': 'ادخل رقمك السري',
    },
    'm7u4zl02': {
      'en': 'Sign In',
      'ar': 'تسجيل الدخول',
    },
    'abzq2tlp': {
      'en': 'Google Sign in',
      'ar': 'جوجل تسجيل الدخول',
    },
    '36l1cien': {
      'en': 'Forgot Password?',
      'ar': 'هل نسيت كلمة السر؟',
    },
    'tnzpzxno': {
      'en': 'Email',
      'ar': 'بريد إلكتروني',
    },
    'u1r3f5t0': {
      'en': 'Send Link',
      'ar': 'أرسل الرابط',
    },
    'g9r5yur5': {
      'en': 'Don\'t have an account?',
      'ar': 'ليس لديك حساب؟',
    },
    'p1uzjbwe': {
      'en': 'Sign Up',
      'ar': 'اشتراك',
    },
  },
  // addItem
  {
    'om6l2w34': {
      'en': 'Add New Item',
      'ar': 'أضف أداة جديدة',
    },
    'e92pnt5z': {
      'en': 'Name',
      'ar': 'اسم',
    },
    'shmfx7lt': {
      'en': 'Cost',
      'ar': 'يكلف',
    },
    'yrq1c9a6': {
      'en': 'Option 1',
      'ar': 'الخيار 1',
    },
    '92bg8d3z': {
      'en': 'Category*',
      'ar': 'فئة*',
    },
    'b7pnoexn': {
      'en': 'Search for categories',
      'ar': 'البحث عن الفئات',
    },
    'm6yh3acj': {
      'en': 'Cancel',
      'ar': '',
    },
    'foltrgyr': {
      'en': 'Item Code Invalid',
      'ar': '',
    },
    '6hntmh35': {
      'en': 'Try Scanning Again.',
      'ar': '',
    },
    'vds7t1kb': {
      'en': 'Expiry Date*',
      'ar': 'تاريخ الانتهاء*',
    },
    '51u58u79': {
      'en': 'DD',
      'ar': 'DD',
    },
    'r4830i3x': {
      'en': 'MM',
      'ar': 'MM',
    },
    '3g85pv2w': {
      'en': 'YYYY',
      'ar': 'YYYY',
    },
    '7pdff22v': {
      'en': 'Quantity(pc/kg)',
      'ar': 'الكمية (كمبيوتر / كجم)',
    },
    'ybzwgi0n': {
      'en': 'Description/Condition*',
      'ar': 'الوصف/الحالة*',
    },
    'l4znbr2w': {
      'en': 'New',
      'ar': 'جديد',
    },
    'p3nykppu': {
      'en': 'Old',
      'ar': 'قديم',
    },
    'aj2cg8xc': {
      'en': 'About to Expire',
      'ar': 'على وشك الانتهاء',
    },
    'ri9i55ny': {
      'en': 'Expired',
      'ar': 'منتهي الصلاحية',
    },
    '99nk8gkb': {
      'en': 'Preserved',
      'ar': 'محفوظ',
    },
    'n25zp9pa': {
      'en': 'Original Packing',
      'ar': 'التعبئة الأصلية',
    },
    'b36vn7a0': {
      'en': 'Categories',
      'ar': 'فئات',
    },
    'ux2v4026': {
      'en': 'Enter Custom Category Here...',
      'ar': 'أدخل الفئة المخصصة هنا...',
    },
    'o0quzewv': {
      'en': 'User Added Category',
      'ar': 'أضاف المستخدم الفئة',
    },
    '0bs9303u': {
      'en': 'Added Items',
      'ar': 'العناصر المضافة',
    },
    '8l8cdwwu': {
      'en': 'New Item',
      'ar': 'عنصر جديد',
    },
  },
  // profile
  {
    'q7iyngfb': {
      'en': 'Log Out',
      'ar': 'تسجيل خروج',
    },
    'ljbwqhds': {
      'en': 'English',
      'ar': '',
    },
    'euz5f020': {
      'en': 'Arabic',
      'ar': '',
    },
    'mzm0n0uq': {
      'en': 'Recent Donations',
      'ar': 'التبرعات الأخيرة',
    },
    '0fcodqsy': {
      'en': 'You havent made any donations yet',
      'ar': 'لم تقم بأي تبرعات حتى الآن',
    },
    'lfw6xt8k': {
      'en': 'Profile',
      'ar': 'حساب تعريفي',
    },
  },
  // foodcart
  {
    'gktrcwbb': {
      'en': 'Your Cart',
      'ar': 'عربتك',
    },
    'q9dvicne': {
      'en':
          'Here are your added Items. Click to edit details, Long press to delete, double tap to duplicate',
      'ar':
          'هنا العناصر المضافة الخاصة بك. انقر لتحرير التفاصيل، ثم اضغط لفترة طويلة للحذف، وانقر نقرًا مزدوجًا للتكرار',
    },
    '8l2z37am': {
      'en': 'Basket',
      'ar': 'سلة',
    },
  },
  // expenses
  {
    'xf5iom5j': {
      'en': 'Spend Distribution',
      'ar': 'توزيع الإنفاق',
    },
    'ordqlheo': {
      'en': 'h',
      'ar': 'ح',
    },
    'bb25ybab': {
      'en': 'Spent Value Catogries',
      'ar': 'فئات القيمة المستهلكة',
    },
    'ub56rlbi': {
      'en': 'h',
      'ar': 'ح',
    },
    '7ni0eozg': {
      'en': 'Individual Costs',
      'ar': 'التكاليف الفردية',
    },
    'bjidy8v1': {
      'en': 'h',
      'ar': 'ح',
    },
    'nb2wpxjm': {
      'en': 'Quantity Distribution',
      'ar': 'توزيع الكمية',
    },
    'n5yjo5ur': {
      'en': 'h',
      'ar': 'ح',
    },
    '0hml7c54': {
      'en': 'Name',
      'ar': 'اسم',
    },
    '9jv6n4r9': {
      'en': 'Qty',
      'ar': 'الكمية',
    },
    'mlxwhgx0': {
      'en': 'Price',
      'ar': 'سعر',
    },
    'hohiyepg': {
      'en': 'Cart',
      'ar': 'عربة التسوق',
    },
    '10p0k4nh': {
      'en': 'Statistics',
      'ar': 'إحصائيات',
    },
    '7rdirpc3': {
      'en': 'Stats',
      'ar': 'احصائيات',
    },
  },
  // ItemDetail
  {
    'ja05f35s': {
      'en': 'Name',
      'ar': 'اسم',
    },
    'd6asvdt9': {
      'en': 'Item Name',
      'ar': 'اسم العنصر',
    },
    'f4zuq1qb': {
      'en': 'Description/Condition',
      'ar': 'الوصف/الحالة',
    },
    'iswp6u4l': {
      'en': 'Description',
      'ar': 'وصف',
    },
    'c7xre49h': {
      'en': 'Item Description',
      'ar': 'وصف السلعة',
    },
    '0be57s9k': {
      'en': 'Option 1',
      'ar': 'الخيار 1',
    },
    'do5dybrb': {
      'en': 'Category',
      'ar': 'فئة',
    },
    'bz6ammgv': {
      'en': 'Search for an item...',
      'ar': 'البحث عن عنصر...',
    },
    'gjlnzkwq': {
      'en': 'Category',
      'ar': 'فئة',
    },
    'dp6msy43': {
      'en': 'Quantity',
      'ar': 'كمية',
    },
    'tx6lpo5w': {
      'en': 'piece/kg',
      'ar': 'قطعة/كجم',
    },
    'jmflvf4t': {
      'en': 'Donation Status',
      'ar': 'حالة التبرع',
    },
    'sxo5zb1f': {
      'en': 'AED',
      'ar': 'درهم',
    },
    'fjpicnco': {
      'en': 'Price',
      'ar': 'سعر',
    },
    'zu50bfam': {
      'en': 'Buying Value',
      'ar': 'قيمة الشراء',
    },
    '5t2zl0v0': {
      'en': 'Donated?',
      'ar': 'تبرعت؟',
    },
    'jdltypve': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // inbox
  {
    '43h8mv7y': {
      'en': 'Nearest Food Banks Found: ',
      'ar': 'تم العثور على أقرب بنوك الطعام:',
    },
    'j0vb0cgi': {
      'en': 'Inbox',
      'ar': 'صندوق الوارد',
    },
    'lv177elx': {
      'en': 'Inbox',
      'ar': 'صندوق الوارد',
    },
  },
  // chat_2_Details
  {
    'zgxwicf3': {
      'en': 'Group Chat',
      'ar': 'مجموعة محادثة',
    },
    '54p6yj3l': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // chat_2_main
  {
    '44xpinu3': {
      'en': 'To report any offences please contact shreeshcreates@gmail.com',
      'ar': 'للإبلاغ عن أي مخالفات، يرجى الاتصال بـ shreeshcreates@gmail.com',
    },
    'no4uuslc': {
      'en': 'Group Chat',
      'ar': 'مجموعة محادثة',
    },
    'rp6omzss': {
      'en': 'My Chats',
      'ar': 'دردشاتي',
    },
    '8znbadwa': {
      'en': 'Chats',
      'ar': 'الدردشات',
    },
  },
  // chat_2_InviteUsers
  {
    '83uh4d3a': {
      'en': 'Invite Friends',
      'ar': 'ادعو أصدقاء',
    },
    'b1z15247': {
      'en': 'Selected',
      'ar': 'المحدد',
    },
    'lk4jmefg': {
      'en': 'Find a Food Bank',
      'ar': 'ابحث عن بنك الطعام',
    },
    'tyambvuq': {
      'en': 'Select bank below to start a chat.',
      'ar': 'اختر البنك أدناه لبدء الدردشة.',
    },
    'kl8zdi1n': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // image_Details
  {
    'cnx7i18h': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // map
  {
    'grcgr199': {
      'en': 'Nearby',
      'ar': 'مجاور',
    },
  },
  // homescreen
  {
    '9d0oo084': {
      'en':
          'Click your items to check their donation status\nItems in category near expiry:',
      'ar':
          'انقر فوق العناصر الخاصة بك للتحقق من حالة التبرع بها\nالعناصر الموجودة في الفئة قرب انتهاء الصلاحية:',
    },
    '5oo64cjh': {
      'en': 'Dashboard',
      'ar': 'لوحة القيادة',
    },
    'qe0chuc8': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // tests
  {
    'lvn0ah0e': {
      'en':
          'Disclaimer: This app is built as a demonstration of an idea, no actual rewards are set yet.',
      'ar':
          'إخلاء المسؤولية: تم إنشاء هذا التطبيق كعرض لفكرة ما، ولم يتم تعيين أي مكافآت فعلية حتى الآن.',
    },
    'rvu0h7b3': {
      'en': 'Redeem your points here for exciting rewards!',
      'ar': 'استبدل نقاطك هنا للحصول على مكافآت مثيرة!',
    },
    'lmla92kp': {
      'en': 'Claim',
      'ar': 'مطالبة',
    },
    'c56habyu': {
      'en': 'Rewards',
      'ar': 'المكافآت',
    },
    'rfkuwrf8': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // tttt
  {
    '43sl6tau': {
      'en': 'Page Title',
      'ar': '',
    },
    '277rgifc': {
      'en': 'Home',
      'ar': '',
    },
  },
  // chat_DetailsOverlay
  {
    'g5bny9px': {
      'en': 'Chat Details',
      'ar': 'تفاصيل الدردشة',
    },
    '9a7oz1d2': {
      'en': 'Group Chat ID: ',
      'ar': 'معرف الدردشة الجماعية:',
    },
    '3x8woxi6': {
      'en': 'In this chat',
      'ar': 'في هذه الدردشة',
    },
    'y1qfr386': {
      'en': 'Close',
      'ar': 'يغلق',
    },
  },
  // chat_ThreadComponent
  {
    'gufbyfur': {
      'en': 'Start typing here...',
      'ar': 'ابدأ بالكتابة هنا...',
    },
    'kc8i1ez1': {
      'en': 'You must enter a message...',
      'ar': 'يجب عليك إدخال رسالة...',
    },
    '6i2nv78h': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
  },
  // user_ListSmall
  {
    'h61dceco': {
      'en': 'ME',
      'ar': 'أنا',
    },
  },
  // deleteDialog
  {
    '7xx1pnum': {
      'en': 'Options',
      'ar': 'خيارات',
    },
    '3vdilwmy': {
      'en': 'Delete Chat',
      'ar': 'حذف الدردشة',
    },
    'neg3ww3r': {
      'en': 'Confirm Delete',
      'ar': 'تأكيد الحذف',
    },
    '7jm1b4j8': {
      'en': 'You can\'t undo this action.',
      'ar': 'لا يمكنك التراجع عن هذا الإجراء.',
    },
    'x0c139ns': {
      'en': 'Delete',
      'ar': 'يمسح',
    },
  },
  // location
  {
    'pr1tnfwk': {
      'en': 'Select Location',
      'ar': 'اختر موقعا',
    },
    '2mjjggk4': {
      'en': 'Done',
      'ar': 'منتهي',
    },
  },
  // empty
  {
    'rl5i6z18': {
      'en': 'No Items to show',
      'ar': 'لا توجد عناصر لعرضها',
    },
    '9hq7ap8u': {
      'en': 'Add eligible items to see this page',
      'ar': 'أضف العناصر المؤهلة لرؤية هذه الصفحة',
    },
  },
  // addNewCategory
  {
    '05rxuety': {
      'en': 'Select Category yourself',
      'ar': 'حدد الفئة بنفسك',
    },
  },
  // wt1
  {
    '4ft5p9de': {
      'en': 'Suggestions',
      'ar': 'اقتراحات',
    },
  },
  // clickme
  {
    '3jafxkr6': {
      'en': 'Click Here! ',
      'ar': 'انقر هنا!',
    },
  },
  // Miscellaneous
  {
    'oswhlgel': {
      'en': '',
      'ar': '',
    },
    '5sc61jzy': {
      'en': '',
      'ar': '',
    },
    '1m67eyyz': {
      'en': '',
      'ar': '',
    },
    'wnrfkzw4': {
      'en': '',
      'ar': '',
    },
    'xqadv9sx': {
      'en': 'Permission needed to upload Food Items',
      'ar': 'الإذن اللازم لتحميل المواد الغذائية',
    },
    'r0rwjkjt': {
      'en': 'Permission needed to upload Food Items',
      'ar': 'الإذن اللازم لتحميل المواد الغذائية',
    },
    '6it69ggp': {
      'en': 'To be notified about Food Expiry please enable notification',
      'ar': 'ليتم إعلامك بشأن انتهاء صلاحية الطعام، يرجى تمكين الإشعار',
    },
    'dy5j2fva': {
      'en': '',
      'ar': '',
    },
    'qnsgfn07': {
      'en': '',
      'ar': '',
    },
    '6b9qhg8v': {
      'en': '',
      'ar': '',
    },
    '1q15eleh': {
      'en': '',
      'ar': '',
    },
    't4vmonfn': {
      'en': '',
      'ar': '',
    },
    'mexiyrpm': {
      'en': '',
      'ar': '',
    },
    '5k86svfb': {
      'en': '',
      'ar': '',
    },
    'u3p2vem3': {
      'en': '',
      'ar': '',
    },
    'dnql5czr': {
      'en': '',
      'ar': '',
    },
    '38uoleic': {
      'en': '',
      'ar': '',
    },
    '3r31qti8': {
      'en': '',
      'ar': '',
    },
    'zt3m33u3': {
      'en': '',
      'ar': '',
    },
    'rj9eknhl': {
      'en': '',
      'ar': '',
    },
    'yeq6j0eb': {
      'en': '',
      'ar': '',
    },
    'nwoulee3': {
      'en': '',
      'ar': '',
    },
    '47f3gn21': {
      'en': '',
      'ar': '',
    },
    'qvklvv52': {
      'en': '',
      'ar': '',
    },
    'bu43sqly': {
      'en': '',
      'ar': '',
    },
    'yl03vlv9': {
      'en': '',
      'ar': '',
    },
    'pet64hg5': {
      'en': '',
      'ar': '',
    },
    '0vip3c6k': {
      'en': '',
      'ar': '',
    },
    'exbalg6z': {
      'en': '',
      'ar': '',
    },
    'rfwtm893': {
      'en': '',
      'ar': '',
    },
    '0l7vmukk': {
      'en': '',
      'ar': '',
    },
    'mcv6maoo': {
      'en': '',
      'ar': '',
    },
  },
].reduce((a, b) => a..addAll(b));
