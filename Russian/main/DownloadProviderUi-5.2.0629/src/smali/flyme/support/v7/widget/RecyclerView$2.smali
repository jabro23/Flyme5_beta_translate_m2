.class Lflyme/support/v7/widget/RecyclerView$2;
.super Ljava/lang/Object;
.source "RecyclerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lflyme/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lflyme/support/v7/widget/RecyclerView;


# direct methods
.method constructor <init>(Lflyme/support/v7/widget/RecyclerView;)V
    .locals 0

    .prologue
    .line 398
    iput-object p1, p0, Lflyme/support/v7/widget/RecyclerView$2;->this$0:Lflyme/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 401
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$2;->this$0:Lflyme/support/v7/widget/RecyclerView;

    iget-object v0, v0, Lflyme/support/v7/widget/RecyclerView;->mItemAnimator:Lflyme/support/v7/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$2;->this$0:Lflyme/support/v7/widget/RecyclerView;

    iget-object v0, v0, Lflyme/support/v7/widget/RecyclerView;->mItemAnimator:Lflyme/support/v7/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView$ItemAnimator;->runPendingAnimations()V

    .line 404
    :cond_0
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$2;->this$0:Lflyme/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    # setter for: Lflyme/support/v7/widget/RecyclerView;->mPostedAnimatorRunner:Z
    invoke-static {v0, v1}, Lflyme/support/v7/widget/RecyclerView;->access$602(Lflyme/support/v7/widget/RecyclerView;Z)Z

    .line 405
    return-void
.end method
