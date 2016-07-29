.class Landroid/support/v7/internal/widget/ActionBarContainer$1;
.super Ljava/lang/Object;
.source "ActionBarContainer.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/internal/widget/ActionBarContainer;->getBlurOnDrawListener()Landroid/view/ViewTreeObserver$OnDrawListener;
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
    .line 74
    iput-object p1, p0, Landroid/support/v7/internal/widget/ActionBarContainer$1;->this$0:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDraw()V
    .locals 6

    .prologue
    .line 78
    :try_start_0
    # getter for: Landroid/support/v7/internal/widget/ActionBarContainer;->sDirtyField:Ljava/lang/reflect/Field;
    invoke-static {}, Landroid/support/v7/internal/widget/ActionBarContainer;->access$000()Ljava/lang/reflect/Field;

    move-result-object v2

    if-eqz v2, :cond_0

    # getter for: Landroid/support/v7/internal/widget/ActionBarContainer;->sGetViewRootImplMethod:Ljava/lang/reflect/Method;
    invoke-static {}, Landroid/support/v7/internal/widget/ActionBarContainer;->access$100()Ljava/lang/reflect/Method;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 79
    # getter for: Landroid/support/v7/internal/widget/ActionBarContainer;->sDirtyField:Ljava/lang/reflect/Field;
    invoke-static {}, Landroid/support/v7/internal/widget/ActionBarContainer;->access$000()Ljava/lang/reflect/Field;

    move-result-object v2

    # getter for: Landroid/support/v7/internal/widget/ActionBarContainer;->sGetViewRootImplMethod:Ljava/lang/reflect/Method;
    invoke-static {}, Landroid/support/v7/internal/widget/ActionBarContainer;->access$100()Ljava/lang/reflect/Method;

    move-result-object v3

    iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarContainer$1;->this$0:Landroid/support/v7/internal/widget/ActionBarContainer;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 81
    .local v0, "diryRect":Landroid/graphics/Rect;
    if-eqz v0, :cond_0

    .line 82
    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContainer$1;->this$0:Landroid/support/v7/internal/widget/ActionBarContainer;

    # getter for: Landroid/support/v7/internal/widget/ActionBarContainer;->mVisibleRect:Landroid/graphics/Rect;
    invoke-static {v2}, Landroid/support/v7/internal/widget/ActionBarContainer;->access$200(Landroid/support/v7/internal/widget/ActionBarContainer;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContainer$1;->this$0:Landroid/support/v7/internal/widget/ActionBarContainer;

    # getter for: Landroid/support/v7/internal/widget/ActionBarContainer;->mVisibleRect:Landroid/graphics/Rect;
    invoke-static {v2}, Landroid/support/v7/internal/widget/ActionBarContainer;->access$200(Landroid/support/v7/internal/widget/ActionBarContainer;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 84
    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContainer$1;->this$0:Landroid/support/v7/internal/widget/ActionBarContainer;

    # getter for: Landroid/support/v7/internal/widget/ActionBarContainer;->mVisibleRect:Landroid/graphics/Rect;
    invoke-static {v2}, Landroid/support/v7/internal/widget/ActionBarContainer;->access$200(Landroid/support/v7/internal/widget/ActionBarContainer;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .end local v0    # "diryRect":Landroid/graphics/Rect;
    :cond_0
    :goto_0
    return-void

    .line 88
    :catch_0
    move-exception v1

    .line 89
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
