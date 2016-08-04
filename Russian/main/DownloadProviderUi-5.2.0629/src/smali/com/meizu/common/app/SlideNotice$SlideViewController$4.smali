.class Lcom/meizu/common/app/SlideNotice$SlideViewController$4;
.super Ljava/lang/Object;
.source "SlideNotice.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/app/SlideNotice$SlideViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/common/app/SlideNotice$SlideViewController;


# direct methods
.method constructor <init>(Lcom/meizu/common/app/SlideNotice$SlideViewController;)V
    .locals 0

    .prologue
    .line 499
    iput-object p1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController$4;->this$1:Lcom/meizu/common/app/SlideNotice$SlideViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 504
    iget-object v1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController$4;->this$1:Lcom/meizu/common/app/SlideNotice$SlideViewController;

    # getter for: Lcom/meizu/common/app/SlideNotice$SlideViewController;->mNoticeClickMsg:Landroid/os/Message;
    invoke-static {v1}, Lcom/meizu/common/app/SlideNotice$SlideViewController;->access$500(Lcom/meizu/common/app/SlideNotice$SlideViewController;)Landroid/os/Message;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 505
    iget-object v1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController$4;->this$1:Lcom/meizu/common/app/SlideNotice$SlideViewController;

    # getter for: Lcom/meizu/common/app/SlideNotice$SlideViewController;->mNoticeClickMsg:Landroid/os/Message;
    invoke-static {v1}, Lcom/meizu/common/app/SlideNotice$SlideViewController;->access$500(Lcom/meizu/common/app/SlideNotice$SlideViewController;)Landroid/os/Message;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .line 509
    .local v0, "msg":Landroid/os/Message;
    :goto_0
    if-eqz v0, :cond_0

    .line 510
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 512
    :cond_0
    return-void

    .line 507
    .end local v0    # "msg":Landroid/os/Message;
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "msg":Landroid/os/Message;
    goto :goto_0
.end method
