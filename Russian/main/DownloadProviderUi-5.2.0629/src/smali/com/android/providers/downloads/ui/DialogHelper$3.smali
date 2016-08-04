.class final Lcom/android/providers/downloads/ui/DialogHelper$3;
.super Ljava/lang/Object;
.source "DialogHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/downloads/ui/DialogHelper;->showOnlyWifiDialog(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 102
    const/4 v0, 0x0

    # setter for: Lcom/android/providers/downloads/ui/DialogHelper;->isOnlyWifiDialogShow:Z
    invoke-static {v0}, Lcom/android/providers/downloads/ui/DialogHelper;->access$002(Z)Z

    .line 103
    return-void
.end method
