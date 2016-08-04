.class public Lcom/meizu/common/app/PermissionDialogBuilder;
.super Landroid/app/AlertDialog$Builder;
.source "PermissionDialogBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/app/PermissionDialogBuilder$OnPermissionClickListener;
    }
.end annotation


# instance fields
.field private atsClazz:Ljava/lang/Class;

.field private clazz:Ljava/lang/Class;

.field private isPerformanceTestMethod:Ljava/lang/reflect/Method;

.field private isProductInternationalMethod:Ljava/lang/reflect/Method;

.field private isShopDemoVersionMethod:Ljava/lang/reflect/Method;

.field private mContext:Landroid/content/Context;

.field private mFormatString:Ljava/lang/String;

.field private mOnPermissionClickListener:Lcom/meizu/common/app/PermissionDialogBuilder$OnPermissionClickListener;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/common/app/PermissionDialogBuilder;-><init>(Landroid/content/Context;I)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    const/4 v3, 0x0

    .line 43
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 32
    iput-object v3, p0, Lcom/meizu/common/app/PermissionDialogBuilder;->clazz:Ljava/lang/Class;

    .line 33
    iput-object v3, p0, Lcom/meizu/common/app/PermissionDialogBuilder;->isProductInternationalMethod:Ljava/lang/reflect/Method;

    .line 34
    iput-object v3, p0, Lcom/meizu/common/app/PermissionDialogBuilder;->atsClazz:Ljava/lang/Class;

    .line 35
    iput-object v3, p0, Lcom/meizu/common/app/PermissionDialogBuilder;->isPerformanceTestMethod:Ljava/lang/reflect/Method;

    .line 36
    iput-object v3, p0, Lcom/meizu/common/app/PermissionDialogBuilder;->isShopDemoVersionMethod:Ljava/lang/reflect/Method;

    .line 44
    iput-object p1, p0, Lcom/meizu/common/app/PermissionDialogBuilder;->mContext:Landroid/content/Context;

    .line 45
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f04003e

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 47
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/meizu/common/app/PermissionDialogBuilder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 48
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/meizu/common/app/PermissionDialogBuilder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 50
    const v1, 0x7f0d00db

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/meizu/common/app/PermissionDialogBuilder;->mTextView:Landroid/widget/TextView;

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0800b7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/app/PermissionDialogBuilder;->mFormatString:Ljava/lang/String;

    .line 54
    const v1, 0x7f0800b6

    new-instance v2, Lcom/meizu/common/app/PermissionDialogBuilder$1;

    invoke-direct {v2, p0}, Lcom/meizu/common/app/PermissionDialogBuilder$1;-><init>(Lcom/meizu/common/app/PermissionDialogBuilder;)V

    invoke-virtual {p0, v1, v2}, Lcom/meizu/common/app/PermissionDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 65
    const v1, 0x7f0800b5

    new-instance v2, Lcom/meizu/common/app/PermissionDialogBuilder$2;

    invoke-direct {v2, p0}, Lcom/meizu/common/app/PermissionDialogBuilder$2;-><init>(Lcom/meizu/common/app/PermissionDialogBuilder;)V

    invoke-virtual {p0, v1, v2}, Lcom/meizu/common/app/PermissionDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 76
    new-instance v1, Lcom/meizu/common/app/PermissionDialogBuilder$3;

    invoke-direct {v1, p0}, Lcom/meizu/common/app/PermissionDialogBuilder$3;-><init>(Lcom/meizu/common/app/PermissionDialogBuilder;)V

    invoke-virtual {p0, v1}, Lcom/meizu/common/app/PermissionDialogBuilder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 86
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/common/app/PermissionDialogBuilder;)Lcom/meizu/common/app/PermissionDialogBuilder$OnPermissionClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/app/PermissionDialogBuilder;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/meizu/common/app/PermissionDialogBuilder;->mOnPermissionClickListener:Lcom/meizu/common/app/PermissionDialogBuilder$OnPermissionClickListener;

    return-object v0
.end method

.method private join([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "strAry"    # [Ljava/lang/String;
    .param p2, "join"    # Ljava/lang/String;

    .prologue
    .line 137
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 138
    .local v1, "sb":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 139
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    if-ne v0, v2, :cond_0

    .line 140
    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 138
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 142
    :cond_0
    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 146
    :cond_1
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/StringBuffer;)V

    return-object v2
.end method


# virtual methods
.method public create()Landroid/app/AlertDialog;
    .locals 2

    .prologue
    .line 161
    invoke-super {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 162
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    new-instance v1, Lcom/meizu/common/app/PermissionDialogBuilder$4;

    invoke-direct {v1, p0, v0}, Lcom/meizu/common/app/PermissionDialogBuilder$4;-><init>(Lcom/meizu/common/app/PermissionDialogBuilder;Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 174
    return-object v0
.end method

.method public isPerformanceTest()Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 218
    :try_start_0
    iget-object v1, p0, Lcom/meizu/common/app/PermissionDialogBuilder;->atsClazz:Ljava/lang/Class;

    if-nez v1, :cond_0

    .line 219
    const-string v1, "android.os.SystemProperties"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/app/PermissionDialogBuilder;->atsClazz:Ljava/lang/Class;

    .line 221
    :cond_0
    iget-object v1, p0, Lcom/meizu/common/app/PermissionDialogBuilder;->atsClazz:Ljava/lang/Class;

    const-string v3, "getBoolean"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/app/PermissionDialogBuilder;->isPerformanceTestMethod:Ljava/lang/reflect/Method;

    .line 222
    iget-object v1, p0, Lcom/meizu/common/app/PermissionDialogBuilder;->isPerformanceTestMethod:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/meizu/common/app/PermissionDialogBuilder;->atsClazz:Ljava/lang/Class;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "debug.perf.applunch"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 226
    :goto_0
    return v1

    .line 223
    :catch_0
    move-exception v0

    .line 224
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v1, v2

    .line 226
    goto :goto_0
.end method

.method public isProductInternational()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 192
    :try_start_0
    iget-object v1, p0, Lcom/meizu/common/app/PermissionDialogBuilder;->clazz:Ljava/lang/Class;

    if-nez v1, :cond_0

    .line 193
    const-string v1, "android.os.BuildExt"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/app/PermissionDialogBuilder;->clazz:Ljava/lang/Class;

    .line 195
    :cond_0
    iget-object v1, p0, Lcom/meizu/common/app/PermissionDialogBuilder;->clazz:Ljava/lang/Class;

    const-string v3, "isProductInternational"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/app/PermissionDialogBuilder;->isProductInternationalMethod:Ljava/lang/reflect/Method;

    .line 196
    iget-object v1, p0, Lcom/meizu/common/app/PermissionDialogBuilder;->isProductInternationalMethod:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/meizu/common/app/PermissionDialogBuilder;->clazz:Ljava/lang/Class;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 200
    :goto_0
    return v1

    .line 197
    :catch_0
    move-exception v0

    .line 198
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v1, v2

    .line 200
    goto :goto_0
.end method

.method public isShopDemo()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 205
    :try_start_0
    iget-object v1, p0, Lcom/meizu/common/app/PermissionDialogBuilder;->clazz:Ljava/lang/Class;

    if-nez v1, :cond_0

    .line 206
    const-string v1, "android.os.BuildExt"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/app/PermissionDialogBuilder;->clazz:Ljava/lang/Class;

    .line 208
    :cond_0
    iget-object v1, p0, Lcom/meizu/common/app/PermissionDialogBuilder;->clazz:Ljava/lang/Class;

    const-string v3, "isShopDemoVersion"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/app/PermissionDialogBuilder;->isShopDemoVersionMethod:Ljava/lang/reflect/Method;

    .line 209
    iget-object v1, p0, Lcom/meizu/common/app/PermissionDialogBuilder;->isShopDemoVersionMethod:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/meizu/common/app/PermissionDialogBuilder;->clazz:Ljava/lang/Class;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 213
    :goto_0
    return v1

    .line 210
    :catch_0
    move-exception v0

    .line 211
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v1, v2

    .line 213
    goto :goto_0
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/meizu/common/app/PermissionDialogBuilder;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    return-void
.end method

.method public setMessage(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 7
    .param p1, "appName"    # Ljava/lang/String;
    .param p2, "permissionStrings"    # [Ljava/lang/String;

    .prologue
    .line 94
    const-string v0, ""

    .line 95
    .local v0, "messageString":Ljava/lang/String;
    new-instance v2, Lcom/meizu/common/util/PermissionUtils;

    iget-object v3, p0, Lcom/meizu/common/app/PermissionDialogBuilder;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/meizu/common/util/PermissionUtils;-><init>(Landroid/content/Context;)V

    .line 96
    .local v2, "utils":Lcom/meizu/common/util/PermissionUtils;
    invoke-virtual {v2, p2}, Lcom/meizu/common/util/PermissionUtils;->loadPemissionLables([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 97
    .local v1, "result":[Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v3, v1

    if-lez v3, :cond_0

    .line 98
    iget-object v3, p0, Lcom/meizu/common/app/PermissionDialogBuilder;->mFormatString:Ljava/lang/String;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    const-string v6, " \u3001"

    invoke-direct {p0, v1, v6}, Lcom/meizu/common/app/PermissionDialogBuilder;->join([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    array-length v6, v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 101
    :cond_0
    invoke-virtual {p0, v0}, Lcom/meizu/common/app/PermissionDialogBuilder;->setMessage(Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method public setOnPermissonListener(Lcom/meizu/common/app/PermissionDialogBuilder$OnPermissionClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/meizu/common/app/PermissionDialogBuilder$OnPermissionClickListener;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/meizu/common/app/PermissionDialogBuilder;->mOnPermissionClickListener:Lcom/meizu/common/app/PermissionDialogBuilder$OnPermissionClickListener;

    .line 127
    return-void
.end method

.method public show()Landroid/app/AlertDialog;
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 179
    invoke-virtual {p0}, Lcom/meizu/common/app/PermissionDialogBuilder;->isProductInternational()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/meizu/common/app/PermissionDialogBuilder;->isPerformanceTest()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/meizu/common/app/PermissionDialogBuilder;->isShopDemo()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 180
    :cond_0
    iget-object v1, p0, Lcom/meizu/common/app/PermissionDialogBuilder;->mOnPermissionClickListener:Lcom/meizu/common/app/PermissionDialogBuilder$OnPermissionClickListener;

    if-eqz v1, :cond_1

    .line 181
    iget-object v1, p0, Lcom/meizu/common/app/PermissionDialogBuilder;->mOnPermissionClickListener:Lcom/meizu/common/app/PermissionDialogBuilder$OnPermissionClickListener;

    invoke-interface {v1, v0, v2, v2}, Lcom/meizu/common/app/PermissionDialogBuilder$OnPermissionClickListener;->onPerMisssionClick(Landroid/content/DialogInterface;ZZ)V

    .line 187
    :cond_1
    :goto_0
    return-object v0

    :cond_2
    invoke-super {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0
.end method
