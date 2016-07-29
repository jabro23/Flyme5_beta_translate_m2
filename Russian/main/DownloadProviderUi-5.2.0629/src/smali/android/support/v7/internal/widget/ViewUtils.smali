.class public Landroid/support/v7/internal/widget/ViewUtils;
.super Ljava/lang/Object;
.source "ViewUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/internal/widget/ViewUtils$InitThread;
    }
.end annotation


# static fields
.field private static sComputeFitSystemWindowsMethod:Ljava/lang/reflect/Method;

.field private static sMakeOptionalFitsSystemWindowsMethod:Ljava/lang/reflect/Method;


# direct methods
.method static synthetic access$102(Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;
    .locals 0
    .param p0, "x0"    # Ljava/lang/reflect/Method;

    .prologue
    .line 39
    sput-object p0, Landroid/support/v7/internal/widget/ViewUtils;->sMakeOptionalFitsSystemWindowsMethod:Ljava/lang/reflect/Method;

    return-object p0
.end method

.method static synthetic access$200()V
    .locals 0

    .prologue
    .line 39
    invoke-static {}, Landroid/support/v7/internal/widget/ViewUtils;->getComputeFitSystemWindowsMethod()V

    return-void
.end method

.method public static combineMeasuredStates(II)I
    .locals 1
    .param p0, "curState"    # I
    .param p1, "newState"    # I

    .prologue
    .line 87
    or-int v0, p0, p1

    return v0
.end method

.method public static computeFitSystemWindows(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 5
    .param p0, "view"    # Landroid/view/View;
    .param p1, "inoutInsets"    # Landroid/graphics/Rect;
    .param p2, "outLocalInsets"    # Landroid/graphics/Rect;

    .prologue
    const/4 v2, 0x0

    .line 106
    sget-object v1, Landroid/support/v7/internal/widget/ViewUtils;->sComputeFitSystemWindowsMethod:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 108
    :try_start_0
    sget-object v1, Landroid/support/v7/internal/widget/ViewUtils;->sComputeFitSystemWindowsMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-virtual {v1, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 113
    :goto_0
    return v1

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ViewUtils"

    const-string v3, "Could not invoke computeFitSystemWindows"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    move v1, v2

    .line 113
    goto :goto_0
.end method

.method private static getComputeFitSystemWindowsMethod()V
    .locals 6

    .prologue
    .line 214
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_0

    .line 216
    :try_start_0
    const-class v1, Landroid/view/View;

    const-string v2, "computeFitSystemWindows"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/graphics/Rect;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Landroid/graphics/Rect;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroid/support/v7/internal/widget/ViewUtils;->sComputeFitSystemWindowsMethod:Ljava/lang/reflect/Method;

    .line 218
    sget-object v1, Landroid/support/v7/internal/widget/ViewUtils;->sComputeFitSystemWindowsMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result v1

    if-nez v1, :cond_0

    .line 219
    sget-object v1, Landroid/support/v7/internal/widget/ViewUtils;->sComputeFitSystemWindowsMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    :cond_0
    :goto_0
    return-void

    .line 221
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_0
    move-exception v0

    .line 222
    .restart local v0    # "e":Ljava/lang/NoSuchMethodException;
    const-string v1, "ViewUtils"

    const-string v2, "Could not find method computeFitSystemWindows. Oh well."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static init()V
    .locals 2

    .prologue
    .line 68
    sget-object v0, Landroid/support/v7/internal/widget/ViewUtils;->sComputeFitSystemWindowsMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Landroid/support/v7/internal/widget/ViewUtils$InitThread;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/support/v7/internal/widget/ViewUtils$InitThread;-><init>(Landroid/support/v7/internal/widget/ViewUtils$1;)V

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ViewUtils$InitThread;->start()V

    .line 71
    :cond_0
    return-void
.end method

.method public static isLayoutRtl(Landroid/view/View;)Z
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x1

    .line 75
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static makeOptionalFitsSystemWindows(Landroid/view/View;)V
    .locals 4
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 145
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_0

    .line 149
    :try_start_0
    sget-object v2, Landroid/support/v7/internal/widget/ViewUtils;->sMakeOptionalFitsSystemWindowsMethod:Ljava/lang/reflect/Method;

    if-nez v2, :cond_1

    .line 150
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 151
    .local v1, "handler":Landroid/os/Handler;
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Landroid/support/v7/internal/widget/ViewUtils$1;

    invoke-direct {v3, p0, v1}, Landroid/support/v7/internal/widget/ViewUtils$1;-><init>(Landroid/view/View;Landroid/os/Handler;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 180
    .end local v1    # "handler":Landroid/os/Handler;
    :cond_0
    :goto_0
    return-void

    .line 172
    :cond_1
    sget-object v2, Landroid/support/v7/internal/widget/ViewUtils;->sMakeOptionalFitsSystemWindowsMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 174
    :catch_0
    move-exception v0

    .line 175
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v2, "ViewUtils"

    const-string v3, "Could not invoke makeOptionalFitsSystemWindows"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 176
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v0

    .line 177
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string v2, "ViewUtils"

    const-string v3, "Could not invoke makeOptionalFitsSystemWindows"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
