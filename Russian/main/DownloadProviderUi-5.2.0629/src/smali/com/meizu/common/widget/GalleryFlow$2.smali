.class Lcom/meizu/common/widget/GalleryFlow$2;
.super Ljava/lang/Object;
.source "GalleryFlow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/widget/GalleryFlow;->onKeyUp(ILandroid/view/KeyEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/common/widget/GalleryFlow;


# direct methods
.method constructor <init>(Lcom/meizu/common/widget/GalleryFlow;)V
    .locals 0

    .prologue
    .line 1551
    iput-object p1, p0, Lcom/meizu/common/widget/GalleryFlow$2;->this$0:Lcom/meizu/common/widget/GalleryFlow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1554
    iget-object v0, p0, Lcom/meizu/common/widget/GalleryFlow$2;->this$0:Lcom/meizu/common/widget/GalleryFlow;

    # invokes: Lcom/meizu/common/widget/GalleryFlow;->dispatchUnpress()V
    invoke-static {v0}, Lcom/meizu/common/widget/GalleryFlow;->access$300(Lcom/meizu/common/widget/GalleryFlow;)V

    .line 1555
    return-void
.end method
