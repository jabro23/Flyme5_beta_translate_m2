.class public Lcom/meizu/settings/security/DeviceAdminAndCredential;
.super Lcom/android/settings/RestrictedSettingsFragment;
.source "DeviceAdminAndCredential.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mInstallAppRisk:Landroid/preference/ListPreference;

.field private mKeyStore:Landroid/security/KeyStore;

.field private mResetCredentials:Landroid/preference/Preference;

.field private mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/RestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method private initDeviceAdmin(Landroid/preference/PreferenceGroup;)V
    .locals 12
    .param p1, "credentialCategory"    # Landroid/preference/PreferenceGroup;

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/meizu/settings/security/DeviceAdminAndCredential;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const-string v10, "device_policy"

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/admin/DevicePolicyManager;

    .line 125
    .local v5, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v5}, Landroid/app/admin/DevicePolicyManager;->getActiveAdmins()Ljava/util/List;

    move-result-object v3

    .line 126
    .local v3, "cur":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 127
    .local v0, "activeAdmins":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    if-eqz v3, :cond_0

    .line 128
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    if-ge v7, v9, :cond_0

    .line 129
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 128
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 132
    .end local v7    # "i":I
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/settings/security/DeviceAdminAndCredential;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    new-instance v10, Landroid/content/Intent;

    const-string v11, "android.app.action.DEVICE_ADMIN_ENABLED"

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v11, 0x80

    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 135
    .local v1, "avail":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v1, :cond_2

    const/4 v2, 0x0

    .line 136
    .local v2, "count":I
    :goto_1
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_2
    if-ge v7, v2, :cond_1

    .line 137
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 139
    .local v8, "ri":Landroid/content/pm/ResolveInfo;
    :try_start_0
    new-instance v4, Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {p0}, Lcom/meizu/settings/security/DeviceAdminAndCredential;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v4, v9, v8}, Landroid/app/admin/DeviceAdminInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V

    .line 140
    .local v4, "dpi":Landroid/app/admin/DeviceAdminInfo;
    invoke-virtual {v4}, Landroid/app/admin/DeviceAdminInfo;->isVisible()Z

    move-result v9

    if-nez v9, :cond_1

    invoke-virtual {v4}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v9

    if-eqz v9, :cond_3

    .line 149
    .end local v4    # "dpi":Landroid/app/admin/DeviceAdminInfo;
    .end local v8    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_1
    return-void

    .line 135
    .end local v2    # "count":I
    .end local v7    # "i":I
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_1

    .line 143
    .restart local v2    # "count":I
    .restart local v7    # "i":I
    .restart local v8    # "ri":Landroid/content/pm/ResolveInfo;
    :catch_0
    move-exception v6

    .line 144
    .local v6, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v9, "DeviceAdminAndCredential"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Skipping "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 136
    .end local v6    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :cond_3
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 145
    :catch_1
    move-exception v6

    .line 146
    .local v6, "e":Ljava/io/IOException;
    const-string v9, "DeviceAdminAndCredential"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Skipping "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method private initPreference()V
    .locals 7

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/meizu/settings/security/DeviceAdminAndCredential;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 85
    .local v2, "root":Landroid/preference/PreferenceScreen;
    const-string v5, "reset_credentials"

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/meizu/settings/security/DeviceAdminAndCredential;->mResetCredentials:Landroid/preference/Preference;

    .line 86
    const-string v5, "credentials_management"

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    .line 88
    .local v0, "credentialCategory":Landroid/preference/PreferenceGroup;
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceGroup;->filterDivider(Z)V

    .line 89
    invoke-direct {p0, v0}, Lcom/meizu/settings/security/DeviceAdminAndCredential;->initDeviceAdmin(Landroid/preference/PreferenceGroup;)V

    .line 90
    invoke-virtual {p0}, Lcom/meizu/settings/security/DeviceAdminAndCredential;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "user"

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    .line 91
    .local v4, "um":Landroid/os/UserManager;
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v5

    iput-object v5, p0, Lcom/meizu/settings/security/DeviceAdminAndCredential;->mKeyStore:Landroid/security/KeyStore;

    .line 92
    const-string v5, "no_config_credentials"

    invoke-virtual {v4, v5}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 93
    const-string v5, "credential_storage_type"

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 95
    .local v1, "credentialStorageType":Landroid/preference/Preference;
    iget-object v5, p0, Lcom/meizu/settings/security/DeviceAdminAndCredential;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v5}, Landroid/security/KeyStore;->isHardwareBacked()Z

    move-result v5

    if-eqz v5, :cond_0

    const v3, 0x7f0b06d3

    .line 98
    .local v3, "storageSummaryRes":I
    :goto_0
    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setSummary(I)V

    .line 103
    .end local v1    # "credentialStorageType":Landroid/preference/Preference;
    .end local v3    # "storageSummaryRes":I
    :goto_1
    const-string v5, "install_outside_app"

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/ListPreference;

    iput-object v5, p0, Lcom/meizu/settings/security/DeviceAdminAndCredential;->mInstallAppRisk:Landroid/preference/ListPreference;

    .line 104
    iget-object v5, p0, Lcom/meizu/settings/security/DeviceAdminAndCredential;->mInstallAppRisk:Landroid/preference/ListPreference;

    invoke-virtual {v5, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

	.line 107
    iget-object v5, p0, Lcom/meizu/settings/security/DeviceAdminAndCredential;->mInstallAppRisk:Landroid/preference/ListPreference;

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 109
    return-void

    .line 95
    .restart local v1    # "credentialStorageType":Landroid/preference/Preference;
    :cond_0
    const v3, 0x7f0b06d4

    goto :goto_0

    .line 100
    .end local v1    # "credentialStorageType":Landroid/preference/Preference;
    :cond_1
    const-string v5, "credentials_management"

    invoke-virtual {p0, v5}, Lcom/meizu/settings/security/DeviceAdminAndCredential;->removePreference(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private initResetCredentialsPreference()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 112
    iget-object v1, p0, Lcom/meizu/settings/security/DeviceAdminAndCredential;->mResetCredentials:Landroid/preference/Preference;

    if-eqz v1, :cond_0

    .line 113
    iget-object v4, p0, Lcom/meizu/settings/security/DeviceAdminAndCredential;->mResetCredentials:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/meizu/settings/security/DeviceAdminAndCredential;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v1}, Landroid/security/KeyStore;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 116
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/settings/security/DeviceAdminAndCredential;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "mz_package_install_authentication"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_2

    move v0, v3

    .line 118
    .local v0, "mInstallAppRiskIndex":I
    :goto_1
    iget-object v1, p0, Lcom/meizu/settings/security/DeviceAdminAndCredential;->mInstallAppRisk:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 119
    iget-object v1, p0, Lcom/meizu/settings/security/DeviceAdminAndCredential;->mInstallAppRisk:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/meizu/settings/security/DeviceAdminAndCredential;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d00a8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 120
    return-void

    .end local v0    # "mInstallAppRiskIndex":I
    :cond_1
    move v1, v3

    .line 113
    goto :goto_0

    :cond_2
    move v0, v2

    .line 116
    goto :goto_1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 60
    const v0, 0x7f08001a

    invoke-virtual {p0, v0}, Lcom/meizu/settings/security/DeviceAdminAndCredential;->addPreferencesFromResource(I)V

    .line 61
    invoke-direct {p0}, Lcom/meizu/settings/security/DeviceAdminAndCredential;->initPreference()V

    .line 62
    invoke-virtual {p0}, Lcom/meizu/settings/security/DeviceAdminAndCredential;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/settings/datareport/UsageStatsProxy;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/datareport/UsageStatsProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/security/DeviceAdminAndCredential;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    .line 63
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    .line 153
    iget-object v3, p0, Lcom/meizu/settings/security/DeviceAdminAndCredential;->mInstallAppRisk:Landroid/preference/ListPreference;

    if-ne p1, v3, :cond_0

    .line 155
    :try_start_0
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 156
    .local v2, "value":I
    invoke-virtual {p0}, Lcom/meizu/settings/security/DeviceAdminAndCredential;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "mz_package_install_authentication"

    invoke-static {v3, v5, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 157
    iget-object v5, p0, Lcom/meizu/settings/security/DeviceAdminAndCredential;->mInstallAppRisk:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/meizu/settings/security/DeviceAdminAndCredential;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f0d00a8

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    if-ne v2, v4, :cond_1

    const/4 v3, 0x0

    :goto_0
    aget-object v3, v6, v3

    invoke-virtual {v5, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 159
    iget-object v3, p0, Lcom/meizu/settings/security/DeviceAdminAndCredential;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    const-string v5, "DeviceAdminAndCredential"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6, p1, p2}, Lcom/meizu/settings/datareport/UsageStatsProxy;->reportData(Ljava/lang/String;Ljava/lang/String;Landroid/preference/Preference;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    .end local v2    # "value":I
    :cond_0
    :goto_1
    return v4

    .restart local v2    # "value":I
    :cond_1
    move v3, v4

    .line 157
    goto :goto_0

    .line 160
    .end local v2    # "value":I
    :catch_0
    move-exception v1

    .line 161
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string v3, "DeviceAdminAndCredential"

    const-string v5, "could not persist install_outside_app_warning"

    invoke-static {v3, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 67
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onResume()V

    .line 68
    invoke-direct {p0}, Lcom/meizu/settings/security/DeviceAdminAndCredential;->initResetCredentialsPreference()V

    .line 69
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 73
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onStart()V

    .line 74
    iget-object v0, p0, Lcom/meizu/settings/security/DeviceAdminAndCredential;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    const-string v1, "DeviceAdminAndCredential"

    invoke-virtual {v0, v1}, Lcom/meizu/settings/datareport/UsageStatsProxy;->onPageStart(Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 79
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onStop()V

    .line 80
    iget-object v0, p0, Lcom/meizu/settings/security/DeviceAdminAndCredential;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    const-string v1, "DeviceAdminAndCredential"

    invoke-virtual {v0, v1}, Lcom/meizu/settings/datareport/UsageStatsProxy;->onPageStop(Ljava/lang/String;)V

    .line 81
    return-void
.end method
