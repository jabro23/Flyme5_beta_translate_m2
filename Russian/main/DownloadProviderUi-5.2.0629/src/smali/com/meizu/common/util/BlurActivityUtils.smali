.class public Lcom/meizu/common/util/BlurActivityUtils;
.super Ljava/lang/Object;
.source "BlurActivityUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enableBlurActivity(Landroid/app/Activity;)V
    .locals 11
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 21
    const/4 v3, 0x0

    .line 22
    .local v3, "mActionBar":Landroid/app/ActionBar;
    new-instance v4, Lcom/meizu/common/drawble/BlurDrawable;

    invoke-direct {v4}, Lcom/meizu/common/drawble/BlurDrawable;-><init>()V

    .line 23
    .local v4, "mBlurDrawable":Lcom/meizu/common/drawble/BlurDrawable;
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    .line 24
    invoke-virtual {v3, v9}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 25
    invoke-static {v3, v10}, Lcom/meizu/common/util/BlurActivityUtils;->setActionBarViewCollapsable(Landroid/app/ActionBar;Z)V

    .line 27
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const v7, -0xa9ced

    invoke-direct {v1, v7}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 28
    .local v1, "cd":Landroid/graphics/drawable/ColorDrawable;
    new-instance v2, Landroid/graphics/drawable/LayerDrawable;

    const/4 v7, 0x2

    new-array v7, v7, [Landroid/graphics/drawable/Drawable;

    new-instance v8, Lcom/meizu/common/drawble/BlurDrawable;

    invoke-direct {v8}, Lcom/meizu/common/drawble/BlurDrawable;-><init>()V

    aput-object v8, v7, v9

    aput-object v1, v7, v10

    invoke-direct {v2, v7}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 29
    .local v2, "ld":Landroid/graphics/drawable/LayerDrawable;
    invoke-virtual {v3, v2}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 30
    new-instance v7, Lcom/meizu/common/drawble/BlurDrawable;

    invoke-direct {v7}, Lcom/meizu/common/drawble/BlurDrawable;-><init>()V

    invoke-virtual {v3, v7}, Landroid/app/ActionBar;->setSplitBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 32
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    .line 33
    .local v5, "win":Landroid/view/Window;
    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    .line 34
    .local v6, "winParams":Landroid/view/WindowManager$LayoutParams;
    const/high16 v0, 0x4000000

    .line 35
    .local v0, "bits":I
    iget v7, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v8, 0x4000000

    or-int/2addr v7, v8

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 36
    invoke-virtual {v5, v6}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 37
    return-void
.end method

.method private static setActionBarViewCollapsable(Landroid/app/ActionBar;Z)V
    .locals 7
    .param p0, "actionbar"    # Landroid/app/ActionBar;
    .param p1, "collapsable"    # Z

    .prologue
    .line 42
    :try_start_0
    const-string v2, "android.app.ActionBar"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "setActionBarViewCollapsable"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_5

    move-result-object v1

    .line 45
    .local v1, "method":Ljava/lang/reflect/Method;
    const/4 v2, 0x1

    :try_start_1
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_5

    .line 60
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 46
    .restart local v1    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 47
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_5

    goto :goto_0

    .line 53
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :catch_1
    move-exception v0

    .line 54
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0

    .line 48
    .end local v0    # "e":Ljava/lang/SecurityException;
    .restart local v1    # "method":Ljava/lang/reflect/Method;
    :catch_2
    move-exception v0

    .line 49
    .local v0, "e":Ljava/lang/IllegalAccessException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_5

    goto :goto_0

    .line 55
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :catch_3
    move-exception v0

    .line 56
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .line 50
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    .restart local v1    # "method":Ljava/lang/reflect/Method;
    :catch_4
    move-exception v0

    .line 51
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_5

    goto :goto_0

    .line 57
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :catch_5
    move-exception v0

    .line 58
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0
.end method
