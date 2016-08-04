.class Landroid/support/v7/widget/ActionMenuPresenter$ActionMenuRippleDrawable;
.super Lflyme/support/v7/drawable/RippleDrawableComp;
.source "ActionMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionMenuRippleDrawable"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/ActionMenuPresenter;Landroid/view/View;)V
    .locals 1
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 1048
    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuPresenter$ActionMenuRippleDrawable;->this$0:Landroid/support/v7/widget/ActionMenuPresenter;

    .line 1049
    const v0, 0x7f010096

    invoke-direct {p0, p2, v0}, Lflyme/support/v7/drawable/RippleDrawableComp;-><init>(Landroid/view/View;I)V

    .line 1050
    return-void
.end method
