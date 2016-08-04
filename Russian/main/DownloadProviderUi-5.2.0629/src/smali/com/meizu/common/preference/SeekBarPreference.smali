.class public Lcom/meizu/common/preference/SeekBarPreference;
.super Landroid/preference/Preference;
.source "SeekBarPreference.java"


# instance fields
.field protected mSeekBar:Landroid/widget/SeekBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 18
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/common/preference/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    const v0, 0x7f040063

    invoke-virtual {p0, v0}, Lcom/meizu/common/preference/SeekBarPreference;->setLayoutResource(I)V

    .line 27
    return-void
.end method


# virtual methods
.method public getSeekBar()Landroid/widget/SeekBar;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/meizu/common/preference/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method public onBindView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 31
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 32
    const v0, 0x7f0d0106

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/meizu/common/preference/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    .line 35
    return-void
.end method
