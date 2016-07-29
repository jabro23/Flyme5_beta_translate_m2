.class Lflyme/support/v7/drawable/RippleDrawableComp$1;
.super Ljava/lang/Object;
.source "RippleDrawableComp.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lflyme/support/v7/drawable/RippleDrawableComp;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lflyme/support/v7/drawable/RippleDrawableComp;


# direct methods
.method constructor <init>(Lflyme/support/v7/drawable/RippleDrawableComp;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lflyme/support/v7/drawable/RippleDrawableComp$1;->this$0:Lflyme/support/v7/drawable/RippleDrawableComp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .prologue
    .line 118
    iget-object v0, p0, Lflyme/support/v7/drawable/RippleDrawableComp$1;->this$0:Lflyme/support/v7/drawable/RippleDrawableComp;

    # invokes: Lflyme/support/v7/drawable/RippleDrawableComp;->initValue()V
    invoke-static {v0}, Lflyme/support/v7/drawable/RippleDrawableComp;->access$000(Lflyme/support/v7/drawable/RippleDrawableComp;)V

    .line 119
    return-void
.end method
