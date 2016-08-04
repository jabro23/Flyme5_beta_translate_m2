.class Lcom/meizu/common/app/PermissionDialogBuilder$3;
.super Ljava/lang/Object;
.source "PermissionDialogBuilder.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/app/PermissionDialogBuilder;-><init>(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/common/app/PermissionDialogBuilder;


# direct methods
.method constructor <init>(Lcom/meizu/common/app/PermissionDialogBuilder;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/meizu/common/app/PermissionDialogBuilder$3;->this$0:Lcom/meizu/common/app/PermissionDialogBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/meizu/common/app/PermissionDialogBuilder$3;->this$0:Lcom/meizu/common/app/PermissionDialogBuilder;

    # getter for: Lcom/meizu/common/app/PermissionDialogBuilder;->mOnPermissionClickListener:Lcom/meizu/common/app/PermissionDialogBuilder$OnPermissionClickListener;
    invoke-static {v0}, Lcom/meizu/common/app/PermissionDialogBuilder;->access$000(Lcom/meizu/common/app/PermissionDialogBuilder;)Lcom/meizu/common/app/PermissionDialogBuilder$OnPermissionClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/meizu/common/app/PermissionDialogBuilder$3;->this$0:Lcom/meizu/common/app/PermissionDialogBuilder;

    # getter for: Lcom/meizu/common/app/PermissionDialogBuilder;->mOnPermissionClickListener:Lcom/meizu/common/app/PermissionDialogBuilder$OnPermissionClickListener;
    invoke-static {v0}, Lcom/meizu/common/app/PermissionDialogBuilder;->access$000(Lcom/meizu/common/app/PermissionDialogBuilder;)Lcom/meizu/common/app/PermissionDialogBuilder$OnPermissionClickListener;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, p1, v1, v2}, Lcom/meizu/common/app/PermissionDialogBuilder$OnPermissionClickListener;->onPerMisssionClick(Landroid/content/DialogInterface;ZZ)V

    .line 84
    :cond_0
    return-void
.end method
