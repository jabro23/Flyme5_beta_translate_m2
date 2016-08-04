.class public Lcom/android/providers/downloads/ui/DialogHelper;
.super Ljava/lang/Object;
.source "DialogHelper.java"


# static fields
.field private static isOnlyWifiDialogShow:Z

.field private static mSetButtonTextColorMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/providers/downloads/ui/DialogHelper;->isOnlyWifiDialogShow:Z

    .line 63
    const/4 v0, 0x0

    sput-object v0, Lcom/android/providers/downloads/ui/DialogHelper;->mSetButtonTextColorMethod:Ljava/lang/reflect/Method;

    return-void
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 20
    sput-boolean p0, Lcom/android/providers/downloads/ui/DialogHelper;->isOnlyWifiDialogShow:Z

    return p0
.end method

.method public static setAlertDialogPositiveButtonTextColor(Landroid/app/AlertDialog;)V
    .locals 6
    .param p0, "dialog"    # Landroid/app/AlertDialog;

    .prologue
    .line 67
    :try_start_0
    sget-object v1, Lcom/android/providers/downloads/ui/DialogHelper;->mSetButtonTextColorMethod:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    .line 68
    const-class v1, Landroid/app/AlertDialog;

    const-string v2, "setButtonTextColor"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/android/providers/downloads/ui/DialogHelper;->mSetButtonTextColorMethod:Ljava/lang/reflect/Method;

    .line 70
    :cond_0
    sget-object v1, Lcom/android/providers/downloads/ui/DialogHelper;->mSetButtonTextColorMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const v4, 0x7f0a0006

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    .line 80
    :goto_0
    return-void

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .line 73
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v0

    .line 74
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 75
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 76
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 77
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v0

    .line 78
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0
.end method

.method public static showOnlyWifiDialog(Landroid/app/Activity;)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 86
    sget-boolean v2, Lcom/android/providers/downloads/ui/DialogHelper;->isOnlyWifiDialogShow:Z

    if-nez v2, :cond_0

    .line 87
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 88
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x104000a

    new-instance v3, Lcom/android/providers/downloads/ui/DialogHelper$2;

    invoke-direct {v3, p0}, Lcom/android/providers/downloads/ui/DialogHelper$2;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 94
    const/high16 v2, 0x1040000

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 95
    const v2, 0x7f08005f

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 96
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 97
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/providers/downloads/ui/DialogHelper;->isOnlyWifiDialogShow:Z

    .line 98
    new-instance v2, Lcom/android/providers/downloads/ui/DialogHelper$3;

    invoke-direct {v2}, Lcom/android/providers/downloads/ui/DialogHelper$3;-><init>()V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 106
    .end local v0    # "alertDialog":Landroid/app/AlertDialog;
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_0
    return-void
.end method

.method public static showPermissionDialog(Landroid/app/Activity;)V
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 29
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/providers/downloads/ui/PermissionHelper;->isPermissionOk(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/android/providers/downloads/ui/DeviceUtils;->isProductInternational()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 61
    :cond_0
    :goto_0
    return-void

    .line 32
    :cond_1
    new-instance v0, Lcom/meizu/common/app/PermissionDialogBuilder;

    invoke-direct {v0, p0}, Lcom/meizu/common/app/PermissionDialogBuilder;-><init>(Landroid/content/Context;)V

    .line 33
    .local v0, "builder":Lcom/meizu/common/app/PermissionDialogBuilder;
    const/high16 v2, 0x7f080000

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "android.permission.INTERNET"

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Lcom/meizu/common/app/PermissionDialogBuilder;->setMessage(Ljava/lang/String;[Ljava/lang/String;)V

    .line 34
    new-instance v2, Lcom/android/providers/downloads/ui/DialogHelper$1;

    invoke-direct {v2, p0}, Lcom/android/providers/downloads/ui/DialogHelper$1;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v2}, Lcom/meizu/common/app/PermissionDialogBuilder;->setOnPermissonListener(Lcom/meizu/common/app/PermissionDialogBuilder$OnPermissionClickListener;)V

    .line 57
    invoke-virtual {v0}, Lcom/meizu/common/app/PermissionDialogBuilder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    .line 58
    .local v1, "dialog":Landroid/app/AlertDialog;
    if-eqz v1, :cond_0

    .line 59
    invoke-static {v1}, Lcom/android/providers/downloads/ui/DialogHelper;->setAlertDialogPositiveButtonTextColor(Landroid/app/AlertDialog;)V

    goto :goto_0
.end method

.method public static startDownloadService(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 112
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 113
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.providers.downloads"

    const-string v2, "com.android.providers.downloads.DownloadService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 116
    return-void
.end method
