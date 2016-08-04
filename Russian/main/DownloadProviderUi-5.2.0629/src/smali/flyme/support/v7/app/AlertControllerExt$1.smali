.class Lflyme/support/v7/app/AlertControllerExt$1;
.super Ljava/lang/Object;
.source "AlertControllerExt.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lflyme/support/v7/app/AlertControllerExt;->setupContent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lflyme/support/v7/app/AlertControllerExt;


# direct methods
.method constructor <init>(Lflyme/support/v7/app/AlertControllerExt;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lflyme/support/v7/app/AlertControllerExt$1;->this$0:Lflyme/support/v7/app/AlertControllerExt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 39
    iget-object v1, p0, Lflyme/support/v7/app/AlertControllerExt$1;->this$0:Lflyme/support/v7/app/AlertControllerExt;

    # getter for: Lflyme/support/v7/app/AlertControllerExt;->mMessageView:Landroid/widget/TextView;
    invoke-static {v1}, Lflyme/support/v7/app/AlertControllerExt;->access$000(Lflyme/support/v7/app/AlertControllerExt;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    .line 40
    .local v0, "msgLineCount":I
    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 41
    iget-object v1, p0, Lflyme/support/v7/app/AlertControllerExt$1;->this$0:Lflyme/support/v7/app/AlertControllerExt;

    # getter for: Lflyme/support/v7/app/AlertControllerExt;->mMessageView:Landroid/widget/TextView;
    invoke-static {v1}, Lflyme/support/v7/app/AlertControllerExt;->access$000(Lflyme/support/v7/app/AlertControllerExt;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x800003

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 43
    :cond_0
    return-void
.end method
