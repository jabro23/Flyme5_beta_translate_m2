.class Lcom/meizu/common/app/PermissionDialogBuilder$4;
.super Ljava/lang/Object;
.source "PermissionDialogBuilder.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/app/PermissionDialogBuilder;->create()Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/common/app/PermissionDialogBuilder;

.field final synthetic val$alertDialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/meizu/common/app/PermissionDialogBuilder;Landroid/app/AlertDialog;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lcom/meizu/common/app/PermissionDialogBuilder$4;->this$0:Lcom/meizu/common/app/PermissionDialogBuilder;

    iput-object p2, p0, Lcom/meizu/common/app/PermissionDialogBuilder$4;->val$alertDialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v1, 0x1

    .line 165
    iget-object v0, p0, Lcom/meizu/common/app/PermissionDialogBuilder$4;->this$0:Lcom/meizu/common/app/PermissionDialogBuilder;

    invoke-virtual {v0}, Lcom/meizu/common/app/PermissionDialogBuilder;->isProductInternational()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/meizu/common/app/PermissionDialogBuilder$4;->this$0:Lcom/meizu/common/app/PermissionDialogBuilder;

    invoke-virtual {v0}, Lcom/meizu/common/app/PermissionDialogBuilder;->isPerformanceTest()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/meizu/common/app/PermissionDialogBuilder$4;->this$0:Lcom/meizu/common/app/PermissionDialogBuilder;

    invoke-virtual {v0}, Lcom/meizu/common/app/PermissionDialogBuilder;->isShopDemo()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/app/PermissionDialogBuilder$4;->val$alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 167
    iget-object v0, p0, Lcom/meizu/common/app/PermissionDialogBuilder$4;->this$0:Lcom/meizu/common/app/PermissionDialogBuilder;

    # getter for: Lcom/meizu/common/app/PermissionDialogBuilder;->mOnPermissionClickListener:Lcom/meizu/common/app/PermissionDialogBuilder$OnPermissionClickListener;
    invoke-static {v0}, Lcom/meizu/common/app/PermissionDialogBuilder;->access$000(Lcom/meizu/common/app/PermissionDialogBuilder;)Lcom/meizu/common/app/PermissionDialogBuilder$OnPermissionClickListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 168
    iget-object v0, p0, Lcom/meizu/common/app/PermissionDialogBuilder$4;->this$0:Lcom/meizu/common/app/PermissionDialogBuilder;

    # getter for: Lcom/meizu/common/app/PermissionDialogBuilder;->mOnPermissionClickListener:Lcom/meizu/common/app/PermissionDialogBuilder$OnPermissionClickListener;
    invoke-static {v0}, Lcom/meizu/common/app/PermissionDialogBuilder;->access$000(Lcom/meizu/common/app/PermissionDialogBuilder;)Lcom/meizu/common/app/PermissionDialogBuilder$OnPermissionClickListener;

    move-result-object v0

    invoke-interface {v0, p1, v1, v1}, Lcom/meizu/common/app/PermissionDialogBuilder$OnPermissionClickListener;->onPerMisssionClick(Landroid/content/DialogInterface;ZZ)V

    .line 172
    :cond_1
    return-void
.end method
