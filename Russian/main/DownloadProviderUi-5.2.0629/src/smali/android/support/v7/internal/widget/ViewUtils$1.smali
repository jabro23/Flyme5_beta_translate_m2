.class final Landroid/support/v7/internal/widget/ViewUtils$1;
.super Ljava/lang/Object;
.source "ViewUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/internal/widget/ViewUtils;->makeOptionalFitsSystemWindows(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Landroid/support/v7/internal/widget/ViewUtils$1;->val$view:Landroid/view/View;

    iput-object p2, p0, Landroid/support/v7/internal/widget/ViewUtils$1;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 155
    :try_start_0
    iget-object v2, p0, Landroid/support/v7/internal/widget/ViewUtils$1;->val$view:Landroid/view/View;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "makeOptionalFitsSystemWindows"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 156
    .local v1, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result v2

    if-nez v2, :cond_0

    .line 157
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 159
    :cond_0
    # setter for: Landroid/support/v7/internal/widget/ViewUtils;->sMakeOptionalFitsSystemWindowsMethod:Ljava/lang/reflect/Method;
    invoke-static {v1}, Landroid/support/v7/internal/widget/ViewUtils;->access$102(Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;

    .line 160
    iget-object v2, p0, Landroid/support/v7/internal/widget/ViewUtils$1;->val$handler:Landroid/os/Handler;

    new-instance v3, Landroid/support/v7/internal/widget/ViewUtils$1$1;

    invoke-direct {v3, p0}, Landroid/support/v7/internal/widget/ViewUtils$1$1;-><init>(Landroid/support/v7/internal/widget/ViewUtils$1;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 166
    :catch_0
    move-exception v0

    .line 167
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const-string v2, "ViewUtils"

    const-string v3, "Could not find method makeOptionalFitsSystemWindows. Oh well..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
