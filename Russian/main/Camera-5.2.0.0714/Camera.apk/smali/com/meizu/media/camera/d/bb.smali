.class public Lcom/meizu/media/camera/d/bb;
.super Ljava/lang/Object;
.source "MzSettingUI.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/meizu/media/camera/animation/h$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/media/camera/d/bb$f;,
        Lcom/meizu/media/camera/d/bb$d;,
        Lcom/meizu/media/camera/d/bb$c;,
        Lcom/meizu/media/camera/d/bb$a;,
        Lcom/meizu/media/camera/d/bb$e;,
        Lcom/meizu/media/camera/d/bb$b;
    }
.end annotation


# instance fields
.field private a:Lcom/meizu/media/camera/CameraActivity;

.field private b:Landroid/widget/RelativeLayout;

.field private c:Landroid/view/View;

.field private d:Landroid/support/v7/widget/Toolbar;

.field private e:Landroid/widget/ListView;

.field private f:Lcom/meizu/common/c/b;

.field private g:Lcom/meizu/media/camera/d/bb$d;

.field private h:Lcom/meizu/media/camera/d/bb$e;

.field private i:Lcom/meizu/media/camera/bu;

.field private j:Lcom/meizu/media/camera/d/bb$c;

.field private k:Z

.field private l:I

.field private m:Lcom/meizu/media/camera/bz;

.field private n:Lcom/meizu/media/camera/animation/h;

.field private o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/meizu/media/camera/d/bb$a;",
            ">;"
        }
    .end annotation
.end field

.field private p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/meizu/media/camera/d/bb$a;",
            ">;"
        }
    .end annotation
.end field

.field private q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/meizu/media/camera/d/bb$a;",
            ">;"
        }
    .end annotation
.end field

.field private r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/meizu/media/camera/d/bb$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/meizu/media/camera/CameraActivity;Landroid/view/View;)V
    .locals 2

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    sget-object v0, Lcom/meizu/media/camera/d/bb$e;->a:Lcom/meizu/media/camera/d/bb$e;

    iput-object v0, p0, Lcom/meizu/media/camera/d/bb;->h:Lcom/meizu/media/camera/d/bb$e;

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/media/camera/d/bb;->k:Z

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/media/camera/d/bb;->o:Ljava/util/List;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/media/camera/d/bb;->p:Ljava/util/List;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/media/camera/d/bb;->q:Ljava/util/List;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/media/camera/d/bb;->r:Ljava/util/List;

    .line 80
    iput-object p1, p0, Lcom/meizu/media/camera/d/bb;->a:Lcom/meizu/media/camera/CameraActivity;

    .line 81
    iput-object p2, p0, Lcom/meizu/media/camera/d/bb;->c:Landroid/view/View;

    .line 82
    new-instance v0, Lcom/meizu/media/camera/bz;

    invoke-direct {v0, p1}, Lcom/meizu/media/camera/bz;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/meizu/media/camera/d/bb;->m:Lcom/meizu/media/camera/bz;

    .line 83
    new-instance v0, Lcom/meizu/media/camera/bu;

    const v1, 0x7f070004

    invoke-direct {v0, p1, v1}, Lcom/meizu/media/camera/bu;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/meizu/media/camera/d/bb;->i:Lcom/meizu/media/camera/bu;

    .line 84
    invoke-virtual {p1}, Lcom/meizu/media/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0328

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/media/camera/d/bb;->l:I

    .line 85
    new-instance v0, Lcom/meizu/media/camera/d/bb$d;

    iget-object v1, p0, Lcom/meizu/media/camera/d/bb;->a:Lcom/meizu/media/camera/CameraActivity;

    invoke-direct {v0, p0, v1}, Lcom/meizu/media/camera/d/bb$d;-><init>(Lcom/meizu/media/camera/d/bb;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/meizu/media/camera/d/bb;->g:Lcom/meizu/media/camera/d/bb$d;

    .line 86
    invoke-direct {p0}, Lcom/meizu/media/camera/d/bb;->l()V

    .line 87
    sget-object v0, Lcom/meizu/media/camera/d/bb$e;->a:Lcom/meizu/media/camera/d/bb$e;

    invoke-virtual {p0, v0}, Lcom/meizu/media/camera/d/bb;->a(Lcom/meizu/media/camera/d/bb$e;)V

    .line 88
    return-void
.end method

.method private a(Ljava/lang/String;)Lcom/meizu/media/camera/d/bb$a;
    .locals 3

    .prologue
    .line 289
    iget-object v0, p0, Lcom/meizu/media/camera/d/bb;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/d/bb$a;

    .line 290
    iget-object v2, v0, Lcom/meizu/media/camera/d/bb$a;->a:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 294
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/meizu/media/camera/d/bb;)Lcom/meizu/media/camera/d/bb$c;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/meizu/media/camera/d/bb;->j:Lcom/meizu/media/camera/d/bb$c;

    return-object v0
.end method

.method private a(Lcom/meizu/media/camera/d/bb$f;Landroid/view/View;Lcom/meizu/media/camera/d/bb$a;II)V
    .locals 2

    .prologue
    .line 401
    sget-object v0, Lcom/meizu/media/camera/d/bb$b;->a:Lcom/meizu/media/camera/d/bb$b;

    invoke-virtual {v0}, Lcom/meizu/media/camera/d/bb$b;->ordinal()I

    move-result v0

    if-ne v0, p5, :cond_1

    .line 402
    iget-object v0, p1, Lcom/meizu/media/camera/d/bb$f;->a:Landroid/widget/TextView;

    iget-object v1, p3, Lcom/meizu/media/camera/d/bb$a;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 403
    iget-boolean v0, p3, Lcom/meizu/media/camera/d/bb$a;->g:Z

    invoke-virtual {p2, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 404
    iget-object v0, p1, Lcom/meizu/media/camera/d/bb$f;->b:Lcom/meizu/common/widget/Switch;

    new-instance v1, Lcom/meizu/media/camera/d/be;

    invoke-direct {v1, p0, p3, p4}, Lcom/meizu/media/camera/d/be;-><init>(Lcom/meizu/media/camera/d/bb;Lcom/meizu/media/camera/d/bb$a;I)V

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 433
    :cond_0
    :goto_0
    return-void

    .line 414
    :cond_1
    sget-object v0, Lcom/meizu/media/camera/d/bb$b;->b:Lcom/meizu/media/camera/d/bb$b;

    invoke-virtual {v0}, Lcom/meizu/media/camera/d/bb$b;->ordinal()I

    move-result v0

    if-ne v0, p5, :cond_2

    .line 415
    iget-object v0, p1, Lcom/meizu/media/camera/d/bb$f;->a:Landroid/widget/TextView;

    iget-object v1, p3, Lcom/meizu/media/camera/d/bb$a;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 416
    iget-object v0, p1, Lcom/meizu/media/camera/d/bb$f;->c:Landroid/widget/TextView;

    iget-object v1, p3, Lcom/meizu/media/camera/d/bb$a;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 417
    iget-boolean v0, p3, Lcom/meizu/media/camera/d/bb$a;->g:Z

    invoke-virtual {p2, v0}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    .line 418
    :cond_2
    sget-object v0, Lcom/meizu/media/camera/d/bb$b;->c:Lcom/meizu/media/camera/d/bb$b;

    invoke-virtual {v0}, Lcom/meizu/media/camera/d/bb$b;->ordinal()I

    move-result v0

    if-ne v0, p5, :cond_0

    .line 419
    iget-object v0, p1, Lcom/meizu/media/camera/d/bb$f;->a:Landroid/widget/TextView;

    iget-object v1, p3, Lcom/meizu/media/camera/d/bb$a;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 420
    iget-object v0, p1, Lcom/meizu/media/camera/d/bb$f;->c:Landroid/widget/TextView;

    iget-object v1, p3, Lcom/meizu/media/camera/d/bb$a;->d:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 421
    iget-boolean v0, p3, Lcom/meizu/media/camera/d/bb$a;->g:Z

    invoke-virtual {p2, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 422
    iget-object v0, p1, Lcom/meizu/media/camera/d/bb$f;->b:Lcom/meizu/common/widget/Switch;

    new-instance v1, Lcom/meizu/media/camera/d/bf;

    invoke-direct {v1, p0, p3, p4}, Lcom/meizu/media/camera/d/bf;-><init>(Lcom/meizu/media/camera/d/bb;Lcom/meizu/media/camera/d/bb$a;I)V

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/meizu/media/camera/d/bb;Lcom/meizu/media/camera/d/bb$f;Landroid/view/View;Lcom/meizu/media/camera/d/bb$a;II)V
    .locals 0

    .prologue
    .line 33
    invoke-direct/range {p0 .. p5}, Lcom/meizu/media/camera/d/bb;->a(Lcom/meizu/media/camera/d/bb$f;Landroid/view/View;Lcom/meizu/media/camera/d/bb$a;II)V

    return-void
.end method

.method static synthetic b(Lcom/meizu/media/camera/d/bb;)I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/meizu/media/camera/d/bb;->l:I

    return v0
.end method

.method static synthetic c(Lcom/meizu/media/camera/d/bb;)Ljava/util/List;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/meizu/media/camera/d/bb;->r:Ljava/util/List;

    return-object v0
.end method

.method static synthetic d(Lcom/meizu/media/camera/d/bb;)Lcom/meizu/media/camera/bu;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/meizu/media/camera/d/bb;->i:Lcom/meizu/media/camera/bu;

    return-object v0
.end method

.method static synthetic e(Lcom/meizu/media/camera/d/bb;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/meizu/media/camera/d/bb;->e:Landroid/widget/ListView;

    return-object v0
.end method

.method private l()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 135
    sget-boolean v0, Lcom/meizu/media/camera/e/i;->e:Z

    if-eqz v0, :cond_0

    .line 136
    new-instance v0, Lcom/meizu/media/camera/d/bb$a;

    invoke-direct {v0, p0, v2}, Lcom/meizu/media/camera/d/bb$a;-><init>(Lcom/meizu/media/camera/d/bb;Lcom/meizu/media/camera/d/bc;)V

    .line 137
    sget-object v1, Lcom/meizu/media/camera/d/bb$b;->a:Lcom/meizu/media/camera/d/bb$b;

    iput-object v1, v0, Lcom/meizu/media/camera/d/bb$a;->b:Lcom/meizu/media/camera/d/bb$b;

    .line 138
    const-string v1, "mz_pref_hdr_key"

    iput-object v1, v0, Lcom/meizu/media/camera/d/bb$a;->a:Ljava/lang/String;

    .line 139
    const v1, 0x7f0901e1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/meizu/media/camera/d/bb$a;->c:Ljava/lang/Integer;

    .line 140
    iget-object v1, p0, Lcom/meizu/media/camera/d/bb;->o:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    :cond_0
    new-instance v0, Lcom/meizu/media/camera/d/bb$a;

    invoke-direct {v0, p0, v2}, Lcom/meizu/media/camera/d/bb$a;-><init>(Lcom/meizu/media/camera/d/bb;Lcom/meizu/media/camera/d/bc;)V

    .line 144
    sget-object v1, Lcom/meizu/media/camera/d/bb$b;->a:Lcom/meizu/media/camera/d/bb$b;

    iput-object v1, v0, Lcom/meizu/media/camera/d/bb$a;->b:Lcom/meizu/media/camera/d/bb$b;

    .line 145
    const-string v1, "mz_pref_meshline_key"

    iput-object v1, v0, Lcom/meizu/media/camera/d/bb$a;->a:Ljava/lang/String;

    .line 146
    const v1, 0x7f090132

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/meizu/media/camera/d/bb$a;->c:Ljava/lang/Integer;

    .line 147
    iget-object v1, p0, Lcom/meizu/media/camera/d/bb;->o:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    iget-object v1, p0, Lcom/meizu/media/camera/d/bb;->p:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    new-instance v0, Lcom/meizu/media/camera/d/bb$a;

    invoke-direct {v0, p0, v2}, Lcom/meizu/media/camera/d/bb$a;-><init>(Lcom/meizu/media/camera/d/bb;Lcom/meizu/media/camera/d/bc;)V

    .line 151
    sget-object v1, Lcom/meizu/media/camera/d/bb$b;->a:Lcom/meizu/media/camera/d/bb$b;

    iput-object v1, v0, Lcom/meizu/media/camera/d/bb$a;->b:Lcom/meizu/media/camera/d/bb$b;

    .line 152
    const-string v1, "mz_pref_level_key"

    iput-object v1, v0, Lcom/meizu/media/camera/d/bb$a;->a:Ljava/lang/String;

    .line 153
    const v1, 0x7f090130

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/meizu/media/camera/d/bb$a;->c:Ljava/lang/Integer;

    .line 154
    iget-object v1, p0, Lcom/meizu/media/camera/d/bb;->o:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    iget-object v1, p0, Lcom/meizu/media/camera/d/bb;->p:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    sget-boolean v0, Lcom/meizu/media/camera/e/i;->e:Z

    if-eqz v0, :cond_1

    .line 158
    new-instance v0, Lcom/meizu/media/camera/d/bb$a;

    invoke-direct {v0, p0, v2}, Lcom/meizu/media/camera/d/bb$a;-><init>(Lcom/meizu/media/camera/d/bb;Lcom/meizu/media/camera/d/bc;)V

    .line 159
    sget-object v1, Lcom/meizu/media/camera/d/bb$b;->a:Lcom/meizu/media/camera/d/bb$b;

    iput-object v1, v0, Lcom/meizu/media/camera/d/bb$a;->b:Lcom/meizu/media/camera/d/bb$b;

    .line 160
    const-string v1, "mz_pref_meter_separate_key"

    iput-object v1, v0, Lcom/meizu/media/camera/d/bb$a;->a:Ljava/lang/String;

    .line 161
    const v1, 0x7f090107

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/meizu/media/camera/d/bb$a;->c:Ljava/lang/Integer;

    .line 162
    iget-object v1, p0, Lcom/meizu/media/camera/d/bb;->o:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    :cond_1
    sget-boolean v0, Lcom/meizu/media/camera/e/i;->e:Z

    if-eqz v0, :cond_2

    .line 166
    new-instance v0, Lcom/meizu/media/camera/d/bb$a;

    invoke-direct {v0, p0, v2}, Lcom/meizu/media/camera/d/bb$a;-><init>(Lcom/meizu/media/camera/d/bb;Lcom/meizu/media/camera/d/bc;)V

    .line 167
    sget-object v1, Lcom/meizu/media/camera/d/bb$b;->a:Lcom/meizu/media/camera/d/bb$b;

    iput-object v1, v0, Lcom/meizu/media/camera/d/bb$a;->b:Lcom/meizu/media/camera/d/bb$b;

    .line 168
    const-string v1, "mz_pref_time_mark_key"

    iput-object v1, v0, Lcom/meizu/media/camera/d/bb$a;->a:Ljava/lang/String;

    .line 169
    const v1, 0x7f090136

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/meizu/media/camera/d/bb$a;->c:Ljava/lang/Integer;

    .line 170
    iget-object v1, p0, Lcom/meizu/media/camera/d/bb;->o:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    :cond_2
    new-instance v0, Lcom/meizu/media/camera/d/bb$a;

    invoke-direct {v0, p0, v2}, Lcom/meizu/media/camera/d/bb$a;-><init>(Lcom/meizu/media/camera/d/bb;Lcom/meizu/media/camera/d/bc;)V

    .line 174
    sget-object v1, Lcom/meizu/media/camera/d/bb$b;->a:Lcom/meizu/media/camera/d/bb$b;

    iput-object v1, v0, Lcom/meizu/media/camera/d/bb$a;->b:Lcom/meizu/media/camera/d/bb$b;

    .line 175
    const-string v1, "pref_camera_recordlocation_key"

    iput-object v1, v0, Lcom/meizu/media/camera/d/bb$a;->a:Ljava/lang/String;

    .line 176
    const v1, 0x7f090131

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/meizu/media/camera/d/bb$a;->c:Ljava/lang/Integer;

    .line 177
    iget-object v1, p0, Lcom/meizu/media/camera/d/bb;->o:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    iget-object v1, p0, Lcom/meizu/media/camera/d/bb;->p:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    sget-boolean v0, Lcom/meizu/media/camera/e/i;->r:Z

    goto :cond_3

    .line 190
    :cond_3
    sget-boolean v0, Lcom/meizu/media/camera/e/i;->n:Z

    if-eqz v0, :cond_4

    .line 191
    new-instance v0, Lcom/meizu/media/camera/d/bb$a;

    invoke-direct {v0, p0, v2}, Lcom/meizu/media/camera/d/bb$a;-><init>(Lcom/meizu/media/camera/d/bb;Lcom/meizu/media/camera/d/bc;)V

    .line 192
    sget-object v1, Lcom/meizu/media/camera/d/bb$b;->a:Lcom/meizu/media/camera/d/bb$b;

    iput-object v1, v0, Lcom/meizu/media/camera/d/bb$a;->b:Lcom/meizu/media/camera/d/bb$b;

    .line 193
    const-string v1, "mz_pref_storage_key"

    iput-object v1, v0, Lcom/meizu/media/camera/d/bb$a;->a:Ljava/lang/String;

    .line 194
    const v1, 0x7f090135

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/meizu/media/camera/d/bb$a;->c:Ljava/lang/Integer;

    .line 195
    iget-object v1, p0, Lcom/meizu/media/camera/d/bb;->o:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    iget-object v1, p0, Lcom/meizu/media/camera/d/bb;->p:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    :cond_4
    new-instance v0, Lcom/meizu/media/camera/d/bb$a;

    invoke-direct {v0, p0, v2}, Lcom/meizu/media/camera/d/bb$a;-><init>(Lcom/meizu/media/camera/d/bb;Lcom/meizu/media/camera/d/bc;)V

    .line 200
    sget-object v1, Lcom/meizu/media/camera/d/bb$b;->b:Lcom/meizu/media/camera/d/bb$b;

    iput-object v1, v0, Lcom/meizu/media/camera/d/bb$a;->b:Lcom/meizu/media/camera/d/bb$b;

    .line 201
    const-string v1, "pref_camera_picturesize_key"

    iput-object v1, v0, Lcom/meizu/media/camera/d/bb$a;->a:Ljava/lang/String;

    .line 202
    const v1, 0x7f090133

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/meizu/media/camera/d/bb$a;->c:Ljava/lang/Integer;

    .line 203
    iget-object v1, p0, Lcom/meizu/media/camera/d/bb;->o:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    new-instance v0, Lcom/meizu/media/camera/d/bb$a;

    invoke-direct {v0, p0, v2}, Lcom/meizu/media/camera/d/bb$a;-><init>(Lcom/meizu/media/camera/d/bb;Lcom/meizu/media/camera/d/bc;)V

    .line 206
    sget-object v1, Lcom/meizu/media/camera/d/bb$b;->b:Lcom/meizu/media/camera/d/bb$b;

    iput-object v1, v0, Lcom/meizu/media/camera/d/bb$a;->b:Lcom/meizu/media/camera/d/bb$b;

    .line 207
    const-string v1, "pref_camera_videosize_key"

    iput-object v1, v0, Lcom/meizu/media/camera/d/bb$a;->a:Ljava/lang/String;

    .line 208
    const v1, 0x7f090134

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/meizu/media/camera/d/bb$a;->c:Ljava/lang/Integer;

    .line 209
    iget-object v1, p0, Lcom/meizu/media/camera/d/bb;->p:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    return-void
.end method

.method private m()V
    .locals 4

    .prologue
    .line 223
    iget-object v0, p0, Lcom/meizu/media/camera/d/bb;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 224
    iget-object v0, p0, Lcom/meizu/media/camera/d/bb;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/d/bb$a;

    .line 225
    iget-boolean v2, v0, Lcom/meizu/media/camera/d/bb$a;->h:Z

    if-nez v2, :cond_1

    const-string v2, "mz_pref_storage_key"

    iget-object v3, v0, Lcom/meizu/media/camera/d/bb$a;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 226
    :cond_1
    iget-object v2, p0, Lcom/meizu/media/camera/d/bb;->r:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 229
    :cond_2
    iget-object v0, p0, Lcom/meizu/media/camera/d/bb;->g:Lcom/meizu/media/camera/d/bb$d;

    invoke-virtual {v0}, Lcom/meizu/media/camera/d/bb$d;->notifyDataSetInvalidated()V

    .line 230
    return-void
.end method

.method private n()V
    .locals 3

    .prologue
    .line 233
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/meizu/media/camera/d/bb;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/meizu/media/camera/d/bb;->r:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/d/bb$a;

    .line 235
    iget-object v2, p0, Lcom/meizu/media/camera/d/bb;->e:Landroid/widget/ListView;

    iget-boolean v0, v0, Lcom/meizu/media/camera/d/bb$a;->f:Z

    invoke-virtual {v2, v1, v0}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 233
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 237
    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Lcom/meizu/media/camera/d/bb;->j:Lcom/meizu/media/camera/d/bb$c;

    if-eqz v0, :cond_0

    .line 444
    iget-object v0, p0, Lcom/meizu/media/camera/d/bb;->j:Lcom/meizu/media/camera/d/bb$c;

    invoke-interface {v0}, Lcom/meizu/media/camera/d/bb$c;->b()V

    .line 446
    :cond_0
    return-void
.end method

.method public a(Lcom/meizu/media/camera/d/bb$c;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/meizu/media/camera/d/bb;->j:Lcom/meizu/media/camera/d/bb$c;

    .line 130
    return-void
.end method

.method public a(Lcom/meizu/media/camera/d/bb$e;)V
    .locals 2

    .prologue
    .line 213
    iput-object p1, p0, Lcom/meizu/media/camera/d/bb;->h:Lcom/meizu/media/camera/d/bb$e;

    .line 214
    iget-object v0, p0, Lcom/meizu/media/camera/d/bb;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 215
    sget-object v0, Lcom/meizu/media/camera/d/bb$e;->b:Lcom/meizu/media/camera/d/bb$e;

    iget-object v1, p0, Lcom/meizu/media/camera/d/bb;->h:Lcom/meizu/media/camera/d/bb$e;

    invoke-virtual {v0, v1}, Lcom/meizu/media/camera/d/bb$e;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/meizu/media/camera/d/bb;->q:Ljava/util/List;

    iget-object v1, p0, Lcom/meizu/media/camera/d/bb;->p:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 220
    :goto_0
    return-void

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/meizu/media/camera/d/bb;->q:Ljava/util/List;

    iget-object v1, p0, Lcom/meizu/media/camera/d/bb;->o:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public a(Lcom/meizu/media/camera/d/bb$e;Z)V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 240
    iput-object p1, p0, Lcom/meizu/media/camera/d/bb;->h:Lcom/meizu/media/camera/d/bb$e;

    .line 241
    sget-object v2, Lcom/meizu/media/camera/d/bb$e;->b:Lcom/meizu/media/camera/d/bb$e;

    iget-object v3, p0, Lcom/meizu/media/camera/d/bb;->h:Lcom/meizu/media/camera/d/bb$e;

    invoke-virtual {v2, v3}, Lcom/meizu/media/camera/d/bb$e;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 242
    const-string v2, "pref_camera_videosize_key"

    invoke-direct {p0, v2}, Lcom/meizu/media/camera/d/bb;->a(Ljava/lang/String;)Lcom/meizu/media/camera/d/bb$a;

    move-result-object v2

    .line 243
    iget-object v3, p0, Lcom/meizu/media/camera/d/bb;->i:Lcom/meizu/media/camera/bu;

    iget-object v4, v2, Lcom/meizu/media/camera/d/bb$a;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/meizu/media/camera/bu;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/meizu/media/camera/d/bb$a;->e:Ljava/lang/String;

    .line 244
    if-nez p2, :cond_1

    :goto_0
    iput-boolean v0, v2, Lcom/meizu/media/camera/d/bb$a;->h:Z

    .line 250
    :goto_1
    sget-boolean v0, Lcom/meizu/media/camera/e/i;->n:Z

    if-eqz v0, :cond_0

    .line 251
    const-string v0, "mz_pref_storage_key"

    invoke-direct {p0, v0}, Lcom/meizu/media/camera/d/bb;->a(Ljava/lang/String;)Lcom/meizu/media/camera/d/bb$a;

    move-result-object v0

    .line 252
    iget-object v1, p0, Lcom/meizu/media/camera/d/bb;->a:Lcom/meizu/media/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/meizu/media/camera/CameraActivity;->h()Z

    move-result v1

    iput-boolean v1, v0, Lcom/meizu/media/camera/d/bb$a;->g:Z

    .line 254
    :cond_0
    invoke-direct {p0}, Lcom/meizu/media/camera/d/bb;->m()V

    .line 255
    invoke-direct {p0}, Lcom/meizu/media/camera/d/bb;->n()V

    .line 256
    return-void

    :cond_1
    move v0, v1

    .line 244
    goto :goto_0

    .line 246
    :cond_2
    const-string v2, "pref_camera_picturesize_key"

    invoke-direct {p0, v2}, Lcom/meizu/media/camera/d/bb;->a(Ljava/lang/String;)Lcom/meizu/media/camera/d/bb$a;

    move-result-object v2

    .line 247
    iget-object v3, p0, Lcom/meizu/media/camera/d/bb;->i:Lcom/meizu/media/camera/bu;

    iget-object v4, v2, Lcom/meizu/media/camera/d/bb$a;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/meizu/media/camera/bu;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/meizu/media/camera/d/bb$a;->e:Ljava/lang/String;

    .line 248
    if-nez p2, :cond_3

    :goto_2
    iput-boolean v0, v2, Lcom/meizu/media/camera/d/bb$a;->h:Z

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 298
    invoke-direct {p0, p1}, Lcom/meizu/media/camera/d/bb;->a(Ljava/lang/String;)Lcom/meizu/media/camera/d/bb$a;

    move-result-object v0

    .line 299
    if-eqz v0, :cond_0

    .line 300
    iput-boolean p2, v0, Lcom/meizu/media/camera/d/bb$a;->f:Z

    .line 302
    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 4

    .prologue
    .line 319
    iget-object v0, p0, Lcom/meizu/media/camera/d/bb;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/d/bb$a;

    .line 320
    iget-object v2, p0, Lcom/meizu/media/camera/d/bb;->i:Lcom/meizu/media/camera/bu;

    iget-object v3, v0, Lcom/meizu/media/camera/d/bb$a;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/meizu/media/camera/bu;->k(Ljava/lang/String;)V

    .line 321
    iget-object v2, v0, Lcom/meizu/media/camera/d/bb$a;->b:Lcom/meizu/media/camera/d/bb$b;

    sget-object v3, Lcom/meizu/media/camera/d/bb$b;->a:Lcom/meizu/media/camera/d/bb$b;

    if-eq v2, v3, :cond_0

    iget-object v2, v0, Lcom/meizu/media/camera/d/bb$a;->b:Lcom/meizu/media/camera/d/bb$b;

    sget-object v3, Lcom/meizu/media/camera/d/bb$b;->c:Lcom/meizu/media/camera/d/bb$b;

    if-ne v2, v3, :cond_2

    .line 322
    :cond_0
    iget-object v2, p0, Lcom/meizu/media/camera/d/bb;->i:Lcom/meizu/media/camera/bu;

    iget-object v3, v0, Lcom/meizu/media/camera/d/bb$a;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/meizu/media/camera/bu;->a(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v0, Lcom/meizu/media/camera/d/bb$a;->f:Z

    .line 326
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/meizu/media/camera/d/bb;->g:Lcom/meizu/media/camera/d/bb$d;

    invoke-virtual {v0}, Lcom/meizu/media/camera/d/bb$d;->notifyDataSetChanged()V

    goto :goto_0

    .line 323
    :cond_2
    iget-object v2, v0, Lcom/meizu/media/camera/d/bb$a;->b:Lcom/meizu/media/camera/d/bb$b;

    sget-object v3, Lcom/meizu/media/camera/d/bb$b;->b:Lcom/meizu/media/camera/d/bb$b;

    if-ne v2, v3, :cond_1

    .line 324
    iget-object v2, p0, Lcom/meizu/media/camera/d/bb;->m:Lcom/meizu/media/camera/bz;

    iget-object v3, v0, Lcom/meizu/media/camera/d/bb$a;->a:Ljava/lang/String;

    invoke-virtual {v2, v3, p1}, Lcom/meizu/media/camera/bz;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/meizu/media/camera/d/bb$a;->e:Ljava/lang/String;

    goto :goto_1

    .line 328
    :cond_3
    return-void
.end method

.method public b()V
    .locals 4

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/meizu/media/camera/d/bb;->k:Z

    if-eqz v0, :cond_0

    .line 126
    :goto_0
    return-void

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/meizu/media/camera/d/bb;->c:Landroid/view/View;

    const v1, 0x7f100124

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 95
    if-eqz v0, :cond_1

    .line 96
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 97
    iget-object v0, p0, Lcom/meizu/media/camera/d/bb;->c:Landroid/view/View;

    const v1, 0x7f100125

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/meizu/media/camera/d/bb;->b:Landroid/widget/RelativeLayout;

    .line 99
    :cond_1
    iget-object v0, p0, Lcom/meizu/media/camera/d/bb;->b:Landroid/widget/RelativeLayout;

    const v1, 0x7f10017a

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/meizu/media/camera/d/bb;->e:Landroid/widget/ListView;

    .line 100
    iget-object v0, p0, Lcom/meizu/media/camera/d/bb;->b:Landroid/widget/RelativeLayout;

    const v1, 0x7f100179

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p0, Lcom/meizu/media/camera/d/bb;->d:Landroid/support/v7/widget/Toolbar;

    .line 101
    iget-object v0, p0, Lcom/meizu/media/camera/d/bb;->d:Landroid/support/v7/widget/Toolbar;

    const v1, 0x7f090137

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setTitle(I)V

    .line 102
    iget-object v0, p0, Lcom/meizu/media/camera/d/bb;->d:Landroid/support/v7/widget/Toolbar;

    const v1, 0x7f020400

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(I)V

    .line 103
    iget-object v0, p0, Lcom/meizu/media/camera/d/bb;->d:Landroid/support/v7/widget/Toolbar;

    const v1, 0x7f09002b

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationContentDescription(I)V

    .line 104
    iget-object v0, p0, Lcom/meizu/media/camera/d/bb;->d:Landroid/support/v7/widget/Toolbar;

    new-instance v1, Lcom/meizu/media/camera/d/bc;

    invoke-direct {v1, p0}, Lcom/meizu/media/camera/d/bc;-><init>(Lcom/meizu/media/camera/d/bb;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    new-instance v0, Lcom/meizu/media/camera/d/bd;

    iget-object v1, p0, Lcom/meizu/media/camera/d/bb;->e:Landroid/widget/ListView;

    invoke-direct {v0, p0, v1}, Lcom/meizu/media/camera/d/bd;-><init>(Lcom/meizu/media/camera/d/bb;Landroid/widget/AbsListView;)V

    iput-object v0, p0, Lcom/meizu/media/camera/d/bb;->f:Lcom/meizu/common/c/b;

    .line 119
    new-instance v0, Lcom/meizu/media/camera/animation/h;

    iget-object v1, p0, Lcom/meizu/media/camera/d/bb;->a:Lcom/meizu/media/camera/CameraActivity;

    iget-object v2, p0, Lcom/meizu/media/camera/d/bb;->b:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/meizu/media/camera/d/bb;->e:Landroid/widget/ListView;

    invoke-direct {v0, v1, v2, v3}, Lcom/meizu/media/camera/animation/h;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/view/View;)V

    iput-object v0, p0, Lcom/meizu/media/camera/d/bb;->n:Lcom/meizu/media/camera/animation/h;

    .line 120
    iget-object v0, p0, Lcom/meizu/media/camera/d/bb;->n:Lcom/meizu/media/camera/animation/h;

    invoke-virtual {v0, p0}, Lcom/meizu/media/camera/animation/h;->a(Lcom/meizu/media/camera/animation/h$a;)V

    .line 121
    iget-object v0, p0, Lcom/meizu/media/camera/d/bb;->f:Lcom/meizu/common/c/b;

    invoke-virtual {v0}, Lcom/meizu/common/c/b;->a()Z

    .line 122
    iget-object v0, p0, Lcom/meizu/media/camera/d/bb;->e:Landroid/widget/ListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 123
    iget-object v0, p0, Lcom/meizu/media/camera/d/bb;->e:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 124
    iget-object v0, p0, Lcom/meizu/media/camera/d/bb;->e:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/meizu/media/camera/d/bb;->g:Lcom/meizu/media/camera/d/bb$d;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 125
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/media/camera/d/bb;->k:Z

    goto/16 :goto_0
.end method

.method public b(Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 305
    invoke-direct {p0, p1}, Lcom/meizu/media/camera/d/bb;->a(Ljava/lang/String;)Lcom/meizu/media/camera/d/bb$a;

    move-result-object v0

    .line 306
    if-eqz v0, :cond_1

    .line 307
    iput-boolean p2, v0, Lcom/meizu/media/camera/d/bb$a;->h:Z

    .line 316
    :cond_0
    :goto_0
    return-void

    .line 309
    :cond_1
    const-string v0, "mz_pref_hdr_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 310
    invoke-direct {p0, p1}, Lcom/meizu/media/camera/d/bb;->a(Ljava/lang/String;)Lcom/meizu/media/camera/d/bb$a;

    move-result-object v0

    .line 311
    if-eqz v0, :cond_0

    .line 312
    iput-boolean p2, v0, Lcom/meizu/media/camera/d/bb$a;->h:Z

    goto :goto_0
.end method

.method public b(Z)V
    .locals 2

    .prologue
    .line 463
    if-eqz p1, :cond_0

    .line 464
    iget-object v0, p0, Lcom/meizu/media/camera/d/bb;->n:Lcom/meizu/media/camera/animation/h;

    invoke-virtual {v0}, Lcom/meizu/media/camera/animation/h;->b()V

    .line 468
    :goto_0
    return-void

    .line 466
    :cond_0
    iget-object v0, p0, Lcom/meizu/media/camera/d/bb;->b:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public c(Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 504
    iget-object v0, p0, Lcom/meizu/media/camera/d/bb;->i:Lcom/meizu/media/camera/bu;

    invoke-virtual {v0, p1, p2}, Lcom/meizu/media/camera/bu;->a(Ljava/lang/String;Z)V

    .line 505
    return-void
.end method

.method public c()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 449
    iget-object v1, p0, Lcom/meizu/media/camera/d/bb;->n:Lcom/meizu/media/camera/animation/h;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/meizu/media/camera/d/bb;->b:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_1

    .line 450
    iget-object v1, p0, Lcom/meizu/media/camera/d/bb;->n:Lcom/meizu/media/camera/animation/h;

    invoke-virtual {v1}, Lcom/meizu/media/camera/animation/h;->c()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/meizu/media/camera/d/bb;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 452
    :cond_1
    return v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 456
    iget-object v0, p0, Lcom/meizu/media/camera/d/bb;->n:Lcom/meizu/media/camera/animation/h;

    if-eqz v0, :cond_0

    .line 457
    iget-object v0, p0, Lcom/meizu/media/camera/d/bb;->n:Lcom/meizu/media/camera/animation/h;

    invoke-virtual {v0}, Lcom/meizu/media/camera/animation/h;->c()Z

    move-result v0

    .line 459
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()V
    .locals 1

    .prologue
    .line 471
    iget-object v0, p0, Lcom/meizu/media/camera/d/bb;->n:Lcom/meizu/media/camera/animation/h;

    invoke-virtual {v0}, Lcom/meizu/media/camera/animation/h;->a()V

    .line 472
    return-void
.end method

.method public f()Z
    .locals 2

    .prologue
    .line 475
    sget-boolean v0, Lcom/meizu/media/camera/e/i;->o:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/media/camera/d/bb;->i:Lcom/meizu/media/camera/bu;

    const-string v1, "mz_pref_meter_separate_key"

    invoke-virtual {v0, v1}, Lcom/meizu/media/camera/bu;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()Z
    .locals 2

    .prologue
    .line 480
    iget-object v0, p0, Lcom/meizu/media/camera/d/bb;->i:Lcom/meizu/media/camera/bu;

    const-string v1, "pref_camera_recordlocation_key"

    invoke-virtual {v0, v1}, Lcom/meizu/media/camera/bu;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public h()Z
    .locals 2

    .prologue
    .line 484
    iget-object v0, p0, Lcom/meizu/media/camera/d/bb;->i:Lcom/meizu/media/camera/bu;

    const-string v1, "mz_pref_hdr_key"

    invoke-virtual {v0, v1}, Lcom/meizu/media/camera/bu;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public i()Z
    .locals 2

    .prologue
    .line 488
    iget-object v0, p0, Lcom/meizu/media/camera/d/bb;->i:Lcom/meizu/media/camera/bu;

    const-string v1, "mz_pref_meshline_key"

    invoke-virtual {v0, v1}, Lcom/meizu/media/camera/bu;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public j()Z
    .locals 2

    .prologue
    .line 492
    iget-object v0, p0, Lcom/meizu/media/camera/d/bb;->i:Lcom/meizu/media/camera/bu;

    const-string v1, "mz_pref_level_key"

    invoke-virtual {v0, v1}, Lcom/meizu/media/camera/bu;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public k()Z
    .locals 2

    .prologue
    .line 500
    iget-object v0, p0, Lcom/meizu/media/camera/d/bb;->i:Lcom/meizu/media/camera/bu;

    const-string v1, "mz_pref_voice_action_key"

    invoke-virtual {v0, v1}, Lcom/meizu/media/camera/bu;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 260
    iget-object v0, p0, Lcom/meizu/media/camera/d/bb;->g:Lcom/meizu/media/camera/d/bb$d;

    invoke-virtual {v0, p3}, Lcom/meizu/media/camera/d/bb$d;->a(I)Lcom/meizu/media/camera/d/bb$a;

    move-result-object v0

    .line 261
    iget-object v1, v0, Lcom/meizu/media/camera/d/bb$a;->b:Lcom/meizu/media/camera/d/bb$b;

    sget-object v2, Lcom/meizu/media/camera/d/bb$b;->b:Lcom/meizu/media/camera/d/bb$b;

    if-ne v1, v2, :cond_3

    .line 263
    iget-boolean v0, v0, Lcom/meizu/media/camera/d/bb$a;->g:Z

    if-nez v0, :cond_1

    .line 286
    :cond_0
    :goto_0
    return-void

    .line 266
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 267
    const-string v1, "com.meizu.media.camera.action.SIZE_SETTING"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 268
    iget-object v1, p0, Lcom/meizu/media/camera/d/bb;->a:Lcom/meizu/media/camera/CameraActivity;

    const-class v2, Lcom/meizu/media/camera/SizeSettingActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 269
    const-string v1, "secure_camera"

    iget-object v2, p0, Lcom/meizu/media/camera/d/bb;->a:Lcom/meizu/media/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/meizu/media/camera/CameraActivity;->c()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 270
    sget-object v1, Lcom/meizu/media/camera/d/bb$e;->b:Lcom/meizu/media/camera/d/bb$e;

    iget-object v2, p0, Lcom/meizu/media/camera/d/bb;->h:Lcom/meizu/media/camera/d/bb$e;

    invoke-virtual {v1, v2}, Lcom/meizu/media/camera/d/bb$e;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 271
    const-string v1, "com.meizu.media.camera.size/video_size"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 275
    :goto_1
    iget-object v1, p0, Lcom/meizu/media/camera/d/bb;->a:Lcom/meizu/media/camera/CameraActivity;

    invoke-virtual {v1, v0}, Lcom/meizu/media/camera/CameraActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 273
    :cond_2
    const-string v1, "com.meizu.media.camera.size/photo_size"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 276
    :cond_3
    iget-object v1, v0, Lcom/meizu/media/camera/d/bb$a;->b:Lcom/meizu/media/camera/d/bb$b;

    sget-object v2, Lcom/meizu/media/camera/d/bb$b;->a:Lcom/meizu/media/camera/d/bb$b;

    if-eq v1, v2, :cond_4

    iget-object v1, v0, Lcom/meizu/media/camera/d/bb$a;->b:Lcom/meizu/media/camera/d/bb$b;

    sget-object v2, Lcom/meizu/media/camera/d/bb$b;->c:Lcom/meizu/media/camera/d/bb$b;

    if-ne v1, v2, :cond_0

    .line 277
    :cond_4
    iget-boolean v1, v0, Lcom/meizu/media/camera/d/bb$a;->g:Z

    if-eqz v1, :cond_0

    .line 280
    instance-of v1, p2, Landroid/widget/Checkable;

    if-eqz v1, :cond_0

    .line 281
    check-cast p2, Landroid/widget/Checkable;

    invoke-interface {p2}, Landroid/widget/Checkable;->isChecked()Z

    move-result v1

    .line 282
    iput-boolean v1, v0, Lcom/meizu/media/camera/d/bb$a;->f:Z

    .line 283
    iget-object v2, p0, Lcom/meizu/media/camera/d/bb;->i:Lcom/meizu/media/camera/bu;

    iget-object v0, v0, Lcom/meizu/media/camera/d/bb$a;->a:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lcom/meizu/media/camera/bu;->a(Ljava/lang/String;Z)V

    goto :goto_0
.end method
