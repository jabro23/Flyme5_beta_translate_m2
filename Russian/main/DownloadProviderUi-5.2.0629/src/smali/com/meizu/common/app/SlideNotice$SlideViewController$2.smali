.class Lcom/meizu/common/app/SlideNotice$SlideViewController$2;
.super Ljava/lang/Object;
.source "SlideNotice.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 482
    iput-object p1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController$2;->this$1:Lcom/meizu/common/app/SlideNotice$SlideViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 485
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController$2;->this$1:Lcom/meizu/common/app/SlideNotice$SlideViewController;

    invoke-virtual {v0}, Lcom/meizu/common/app/SlideNotice$SlideViewController;->handleShow()Z

    .line 486
    return-void
.end method
