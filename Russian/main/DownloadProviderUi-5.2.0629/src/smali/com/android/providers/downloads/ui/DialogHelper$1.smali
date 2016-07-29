.class final Lcom/android/providers/downloads/ui/DialogHelper$1;
.super Ljava/lang/Object;
.source "DialogHelper.java"

# interfaces
.implements Lcom/meizu/common/app/PermissionDialogBuilder$OnPermissionClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/downloads/ui/DialogHelper;->showPermissionDialog(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/android/providers/downloads/ui/DialogHelper$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPerMisssionClick(Landroid/content/DialogInterface;ZZ)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "isAlwayAllow"    # Z
    .param p3, "isOk"    # Z

    .prologue
    .line 38
    if-eqz p1, :cond_0

    .line 39
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 42
    :cond_0
    if-eqz p3, :cond_2

    .line 43
    if-eqz p2, :cond_1

    .line 44
    :try_start_0
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DialogHelper$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/providers/downloads/ui/PermissionHelper;->savePermissionOkInfo(Landroid/content/Context;Z)V

    .line 55
    :goto_0
    return-void

    .line 46
    :cond_1
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DialogHelper$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/providers/downloads/ui/PermissionHelper;->savePermissionOkInfo(Landroid/content/Context;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 52
    :catch_0
    move-exception v0

    .line 53
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 49
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DialogHelper$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/providers/downloads/ui/PermissionHelper;->savePermissionOkInfo(Landroid/content/Context;Z)V

    .line 50
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DialogHelper$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
