.class public Lcom/android/providers/downloads/ui/SharedPreferencesUtils;
.super Ljava/lang/Object;
.source "SharedPreferencesUtils.java"


# direct methods
.method public static getDownloadSharedpreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    const/4 v2, 0x0

    .line 28
    .local v2, "mPrefs":Landroid/content/SharedPreferences;
    :try_start_0
    const-string v3, "com.android.providers.downloads"

    const/4 v4, 0x2

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 29
    .local v0, "downloadContext":Landroid/content/Context;
    const-string v3, "com.android.providers.downloads.save_preference"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 34
    .end local v0    # "downloadContext":Landroid/content/Context;
    :goto_0
    return-object v2

    .line 30
    :catch_0
    move-exception v1

    .line 32
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static isOnlyWifi(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-static {p0}, Lcom/android/providers/downloads/ui/SharedPreferencesUtils;->getDownloadSharedpreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 39
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    if-eqz v0, :cond_0

    .line 40
    invoke-static {}, Lcom/android/providers/downloads/ui/DeviceUtils;->isChinaMobileCustom()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 41
    const-string v2, "download_only_wifi"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 46
    :cond_0
    :goto_0
    return v1

    .line 43
    :cond_1
    const-string v1, "download_only_wifi"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_0
.end method

.method public static setOnlyWifi(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    invoke-static {p0}, Lcom/android/providers/downloads/ui/SharedPreferencesUtils;->getDownloadSharedpreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 51
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    if-eqz v0, :cond_0

    .line 52
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "download_only_wifi"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 54
    :cond_0
    return-void
.end method
