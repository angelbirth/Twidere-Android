# Add project specific ProGuard rules here.
# By default, the flags in this file are appended to flags specified
# in /Users/mariotaku/Tools/android-sdk/tools/proguard/proguard-android.txt
# You can edit the include path and order by changing the proguardFiles
# directive in build.gradle.
#
# For more details, see
#   http://developer.android.com/guide/developing/tools/proguard.html

# Add any project specific keep options here:

# If your project uses WebView with JS, uncomment the following
# and specify the fully qualified class name to the JavaScript interface
# class:
#-keepclassmembers class fqcn.of.javascript.interface.for.webview {
#   public *;
#}

#-dontobfuscate

-dontwarn sun.net.spi.**
-dontwarn java.nio.file.**
-dontwarn org.codehaus.mojo.**
-dontwarn com.makeramen.roundedimageview.**
-dontwarn com.squareup.haha.**
-dontwarn com.google.android.gms.**
-dontwarn com.google.android.youtube.**
-dontwarn jnamed**
-dontwarn com.bluelinelabs.logansquare.**

-keepattributes *Annotation*
-keepattributes EnclosingMethod

# https://github.com/bluelinelabs/LoganSquare
-keep class com.bluelinelabs.logansquare.** { *; }
-keep @com.bluelinelabs.logansquare.annotation.JsonObject class *
-keep class **$$JsonObjectMapper { *; }

# http://square.github.io/otto/
-keepclassmembers class ** {
    @com.squareup.otto.Subscribe public *;
    @com.squareup.otto.Produce public *;
}

-keepclassmembers class org.mariotaku.twidere.activity.BrowserSignInActivity$InjectorJavaScriptInterface {
    public *;
}

# Fuck shitsung http://stackoverflow.com/a/34896262/859190
# ... and fuck xiaomi http://crashes.to/s/675ac9aff5e
-keep class !android.support.v7.view.menu.MenuBuilder, !org.apache.commons.** { *; }
