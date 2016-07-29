.class Lcom/meizu/common/widget/GalleryFlow$1;
.super Ljava/lang/Object;
.source "GalleryFlow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/GalleryFlow;
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
    .line 146
    iput-object p1, p0, Lcom/meizu/common/widget/GalleryFlow$1;->this$0:Lcom/meizu/common/widget/GalleryFlow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/meizu/common/widget/GalleryFlow$1;->this$0:Lcom/meizu/common/widget/GalleryFlow;

    const/4 v1, 0x0

    # setter for: Lcom/meizu/common/widget/GalleryFlow;->mSuppressSelectionChanged:Z
    invoke-static {v0, v1}, Lcom/meizu/common/widget/GalleryFlow;->access$002(Lcom/meizu/common/widget/GalleryFlow;Z)Z

    .line 150
    iget-object v0, p0, Lcom/meizu/common/widget/GalleryFlow$1;->this$0:Lcom/meizu/common/widget/GalleryFlow;

    invoke-virtual {v0}, Lcom/meizu/common/widget/GalleryFlow;->selectionChanged()V

    .line 151
    return-void
.end method
