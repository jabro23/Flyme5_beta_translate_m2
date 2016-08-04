.class Landroid/support/v7/internal/widget/ActionBarContainer$2;
.super Ljava/lang/Object;
.source "ActionBarContainer.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/internal/widget/ActionBarContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/internal/widget/ActionBarContainer;


# direct methods
.method constructor <init>(Landroid/support/v7/internal/widget/ActionBarContainer;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Landroid/support/v7/internal/widget/ActionBarContainer$2;->this$0:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer$2;->this$0:Landroid/support/v7/internal/widget/ActionBarContainer;

    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarContainer$2;->this$0:Landroid/support/v7/internal/widget/ActionBarContainer;

    # getter for: Landroid/support/v7/internal/widget/ActionBarContainer;->mVisibleRect:Landroid/graphics/Rect;
    invoke-static {v1}, Landroid/support/v7/internal/widget/ActionBarContainer;->access$200(Landroid/support/v7/internal/widget/ActionBarContainer;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ActionBarContainer;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 101
    return-void
.end method
