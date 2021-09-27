<?php
/**
 * إعدادات ووردبريس الأساسية
 *
 * عملية إنشاء الملف wp-config.php تستخدم هذا الملف أثناء التنصيب. لا يجب عليك
 * استخدام الموقع، يمكنك نسخ هذا الملف إلى "wp-config.php" وبعدها ملئ القيم المطلوبة.
 *
 * هذا الملف يحتوي على هذه الإعدادات:
 *
 * * إعدادات قاعدة البيانات
 * * مفاتيح الأمان
 * * بادئة جداول قاعدة البيانات
 * * المسار المطلق لمجلد الووردبريس
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** إعدادات قاعدة البيانات - يمكنك الحصول على هذه المعلومات من مستضيفك ** //

/** اسم قاعدة البيانات لووردبريس */
define( 'DB_NAME', 'moalaatask' );

/** اسم مستخدم قاعدة البيانات */
define( 'DB_USER', 'root' );

/** كلمة مرور قاعدة البيانات */
define( 'DB_PASSWORD', '1234' );

/** عنوان خادم قاعدة البيانات */
define( 'DB_HOST', 'localhost' );

/** ترميز قاعدة البيانات */
define( 'DB_CHARSET', 'utf8mb4' );

/** نوع تجميع قاعدة البيانات. لا تغير هذا إن كنت غير متأكد */
define( 'DB_COLLATE', '' );

/**#@+
 * مفاتيح الأمان.
 *
 * تغيير هذه العبارات إلى عبارات فريدة مختلفة!
 * استخدم الرابط التالي لتوليد المفاتيح {@link https://api.wordpress.org/secret-key/1.1/salt/}
 * يمكنك تغيير هذه في أي وقت لإلغاء جميع ملفات تعريف الارتباط الموجودة. سيؤدي هذا إلى إجبار جميع المستخدمين على تسجيل الدخول مرة أخرى.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'h<420w}GjwL3o[02yJ`o5cv;/JyL<,cR(/.2Yj$Xtw-RG{a#I+CuA:d8N3o<F)#n' );
define( 'SECURE_AUTH_KEY',  'u>0dOhu(6NnVuHMy)}x7beS.DB0f%_8pJd*n$h/8*aM(qzi^|InG)6w4H1GOyh;T' );
define( 'LOGGED_IN_KEY',    ']yhIf?/`l[9$p[E`~$W>]PKG!.83<l?iir,P*<v1- Z=|!yO8F+66;kd*br1ISA}' );
define( 'NONCE_KEY',        'Jh!ws6]fjAlX()p9p:mTx{m]Hla5+Kn4e^P9%5>[1a8cIi@uN%C~g+nq=l2R33h4' );
define( 'AUTH_SALT',        'w(q|*qzAh!d][lQL8nO=My$/!5z$b6.|~t3ZKt|$vP0_A}h#Wm8ulLg8Y2Cy12.L' );
define( 'SECURE_AUTH_SALT', 'vx-39Sb&t-~FJIZ0<PN7euPk?+*`b ~Ax mUc<VmGM}9`aKSeL98?7z)yqG-gm:n' );
define( 'LOGGED_IN_SALT',   'dC`Ny0[n6@m_q*!CEp;0^JN)b(7vao+(}&q)e Ae6s[|.H=4~kTs_[5zP[Zh%;Xg' );
define( 'NONCE_SALT',       'Hpi?4 Y*V?nEZlc)c%#OmpWRuP^$.{TU4S|Ij_@9WTf)o<V3e2rTZfz{Wt)*W@zR' );

/**#@-*/

/**
 * بادئة الجداول في قاعدة البيانات.
 *
 * تستطيع تركيب أكثر من موقع على نفس قاعدة البيانات إذا أعطيت لكل موقع بادئة جداول مختلفة
 * يرجى استخدام حروف، أرقام وخطوط سفلية فقط!
 */
$table_prefix = 'wp_';

/**
 * للمطورين: نظام تشخيص الأخطاء
 *
 * قم بتغييرالقيمة، إن أردت تمكين عرض الملاحظات والأخطاء أثناء التطوير.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* هذا هو المطلوب، توقف عن التعديل! نتمنى لك التوفيق. */

/** المسار المطلق لمجلد ووردبريس. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}
define('CONCATENATE_SCRIPTS', false);
/** إعداد متغيرات الووردبريس وتضمين الملفات. */
require_once ABSPATH . 'wp-settings.php';
