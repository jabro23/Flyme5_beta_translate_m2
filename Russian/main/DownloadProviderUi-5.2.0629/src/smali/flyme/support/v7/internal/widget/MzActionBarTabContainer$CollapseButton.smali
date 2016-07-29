.class Lflyme/support/v7/internal/widget/MzActionBarTabContainer$CollapseButton;
.super Landroid/support/v7/internal/widget/TintImageView;
.source "MzActionBarTabContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lflyme/support/v7/internal/widget/MzActionBarTabContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CollapseButton"
.end annotation


# instance fields
.field final synthetic this$0:Lflyme/support/v7/internal/widget/MzActionBarTabContainer;


# direct methods
.method public constructor <init>(Lflyme/support/v7/internal/widget/MzActionBarTabContainer;Landroid/content/Context;)V
    .locals 4
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 154
    iput-object p1, p0, Lflyme/support/v7/internal/widget/MzActionBarTabContainer$CollapseButton;->this$0:Lflyme/support/v7/internal/widget/MzActionBarTabContainer;

    .line 155
    const/4 v1, 0x0

    const v2, 0x7f010099

    invoke-direct {p0, p2, v1, v2}, Landroid/support/v7/internal/widget/TintImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 157
    invoke-virtual {p0, v3}, Lflyme/support/v7/internal/widget/MzActionBarTabContainer$CollapseButton;->setClickable(Z)V

    .line 158
    invoke-virtual {p0, v3}, Lflyme/support/v7/internal/widget/MzActionBarTabContainer$CollapseButton;->setFocusable(Z)V

    .line 159
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lflyme/support/v7/internal/widget/MzActionBarTabContainer$CollapseButton;->setVisibility(I)V

    .line 160
    invoke-virtual {p0, v3}, Lflyme/support/v7/internal/widget/MzActionBarTabContainer$CollapseButton;->setEnabled(Z)V

    .line 162
    new-instance v1, Lflyme/support/v7/internal/widget/MzActionBarTabContainer$CollapseButton$1;

    invoke-direct {v1, p0, p1}, Lflyme/support/v7/internal/widget/MzActionBarTabContainer$CollapseButton$1;-><init>(Lflyme/support/v7/internal/widget/MzActionBarTabContainer$CollapseButton;Lflyme/support/v7/internal/widget/MzActionBarTabContainer;)V

    invoke-virtual {p0, v1}, Lflyme/support/v7/internal/widget/MzActionBarTabContainer$CollapseButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    new-instance v0, Lflyme/support/v7/drawable/RippleDrawableComp;

    const v1, 0x7f010095

    invoke-direct {v0, p0, v1}, Lflyme/support/v7/drawable/RippleDrawableComp;-><init>(Landroid/view/View;I)V

    .line 172
    .local v0, "background":Lflyme/support/v7/drawable/RippleDrawableComp;
    invoke-virtual {p0, v0}, Lflyme/support/v7/internal/widget/MzActionBarTabContainer$CollapseButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 173
    return-void
.end method


# virtual methods
.method public performClick()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 178
    invoke-super {p0}, Landroid/support/v7/internal/widget/TintImageView;->performClick()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    :goto_0
    return v1

    .line 182
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lflyme/support/v7/internal/widget/MzActionBarTabContainer$CollapseButton;->playSoundEffect(I)V

    goto :goto_0
.end method
