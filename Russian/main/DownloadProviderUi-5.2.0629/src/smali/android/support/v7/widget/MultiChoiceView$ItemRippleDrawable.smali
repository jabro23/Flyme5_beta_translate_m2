.class Landroid/support/v7/widget/MultiChoiceView$ItemRippleDrawable;
.super Lflyme/support/v7/drawable/RippleDrawableComp;
.source "MultiChoiceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/MultiChoiceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemRippleDrawable"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/MultiChoiceView;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/MultiChoiceView;Landroid/view/View;)V
    .locals 1
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 313
    iput-object p1, p0, Landroid/support/v7/widget/MultiChoiceView$ItemRippleDrawable;->this$0:Landroid/support/v7/widget/MultiChoiceView;

    .line 314
    const v0, 0x7f010096

    invoke-direct {p0, p2, v0}, Lflyme/support/v7/drawable/RippleDrawableComp;-><init>(Landroid/view/View;I)V

    .line 315
    return-void
.end method
