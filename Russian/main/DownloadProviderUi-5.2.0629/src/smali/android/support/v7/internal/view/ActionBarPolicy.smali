.class public Landroid/support/v7/internal/view/ActionBarPolicy;
.super Ljava/lang/Object;
.source "ActionBarPolicy.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Landroid/support/v7/internal/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    .line 43
    return-void
.end method

.method public static get(Landroid/content/Context;)Landroid/support/v7/internal/view/ActionBarPolicy;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    new-instance v0, Landroid/support/v7/internal/view/ActionBarPolicy;

    invoke-direct {v0, p0}, Landroid/support/v7/internal/view/ActionBarPolicy;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public enableHomeButtonByDefault()Z
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Landroid/support/v7/internal/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getActionBarHeight()I
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 108
    iget-object v2, p0, Landroid/support/v7/internal/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    sget-object v4, Landroid/support/v7/appcompat/R$styleable;->ActionBar:[I

    const v5, 0x7f01002e

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 110
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v6}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v1

    .line 111
    .local v1, "height":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 112
    return v1
.end method

.method public getEmbeddedMenuWidthLimit()I
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Landroid/support/v7/internal/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getMaxActionButtons()I
    .locals 2

    .prologue
    .line 46
    iget-object v0, p0, Landroid/support/v7/internal/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public getSplitActionBarPadding()I
    .locals 3

    .prologue
    .line 118
    iget-object v1, p0, Landroid/support/v7/internal/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b007a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 119
    .local v0, "padding":I
    return v0
.end method

.method public getStackedTabMaxWidth()I
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Landroid/support/v7/internal/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0033

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method public getTabContainerHeight()I
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 76
    iget-object v3, p0, Landroid/support/v7/internal/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    sget-object v5, Landroid/support/v7/appcompat/R$styleable;->ActionBar:[I

    const v6, 0x7f01002e

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 78
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v3, 0x1

    invoke-virtual {v0, v3, v7}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v1

    .line 79
    .local v1, "height":I
    iget-object v3, p0, Landroid/support/v7/internal/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 80
    .local v2, "r":Landroid/content/res/Resources;
    invoke-virtual {p0}, Landroid/support/v7/internal/view/ActionBarPolicy;->hasEmbeddedTabs()Z

    move-result v3

    if-nez v3, :cond_0

    .line 86
    const v3, 0x7f0b0077

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 90
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 91
    return v1
.end method

.method public hasEmbeddedTabs()Z
    .locals 3

    .prologue
    .line 65
    iget-object v1, p0, Landroid/support/v7/internal/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v0, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 66
    .local v0, "targetSdk":I
    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 67
    iget-object v1, p0, Landroid/support/v7/internal/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f0e0000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 72
    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Landroid/support/v7/internal/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    goto :goto_0
.end method

.method public showsOverflowMenuButton()Z
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x1

    return v0
.end method
