.class Lcom/android/providers/downloads/ui/DefaultSaveSetting$DownloadAdapter;
.super Lcom/meizu/common/widget/SingleArrayPartitionAdapter;
.source "DefaultSaveSetting.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/downloads/ui/DefaultSaveSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DownloadAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/meizu/common/widget/SingleArrayPartitionAdapter",
        "<",
        "Ljava/lang/CharSequence;",
        ">;",
        "Landroid/widget/CompoundButton$OnCheckedChangeListener;"
    }
.end annotation


# instance fields
.field final mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/providers/downloads/ui/DefaultSaveSetting;


# direct methods
.method public constructor <init>(Lcom/android/providers/downloads/ui/DefaultSaveSetting;Landroid/content/Context;Ljava/util/List;[I)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p4, "counts"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;[I)V"
        }
    .end annotation

    .prologue
    .line 263
    .local p3, "objects":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    iput-object p1, p0, Lcom/android/providers/downloads/ui/DefaultSaveSetting$DownloadAdapter;->this$0:Lcom/android/providers/downloads/ui/DefaultSaveSetting;

    .line 264
    invoke-direct {p0, p2, p3, p4}, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;-><init>(Landroid/content/Context;Ljava/util/List;[I)V

    .line 265
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/providers/downloads/ui/DefaultSaveSetting$DownloadAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 266
    return-void
.end method


# virtual methods
.method protected bindHeaderView(Landroid/view/View;Landroid/content/Context;II)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "position"    # I
    .param p4, "partitionIndex"    # I

    .prologue
    .line 276
    if-eqz p1, :cond_1

    .line 277
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DefaultSaveSetting$DownloadAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0xa0e018f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 279
    const v1, 0x1020014

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 280
    .local v0, "tv":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 281
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 284
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 286
    .end local v0    # "tv":Landroid/widget/TextView;
    :cond_1
    return-void
.end method

.method protected bindView(Landroid/view/View;Landroid/content/Context;IILjava/lang/CharSequence;II)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "position"    # I
    .param p4, "partitionIndex"    # I
    .param p5, "object"    # Ljava/lang/CharSequence;
    .param p6, "offset"    # I
    .param p7, "itemBgType"    # I

    .prologue
    .line 298
    new-instance v2, Lcom/android/providers/downloads/ui/DefaultSaveSetting$HeaderViewHolder;

    iget-object v5, p0, Lcom/android/providers/downloads/ui/DefaultSaveSetting$DownloadAdapter;->this$0:Lcom/android/providers/downloads/ui/DefaultSaveSetting;

    const/4 v6, 0x0

    invoke-direct {v2, v5, v6}, Lcom/android/providers/downloads/ui/DefaultSaveSetting$HeaderViewHolder;-><init>(Lcom/android/providers/downloads/ui/DefaultSaveSetting;Lcom/android/providers/downloads/ui/DefaultSaveSetting$1;)V

    .line 299
    .local v2, "holder":Lcom/android/providers/downloads/ui/DefaultSaveSetting$HeaderViewHolder;
    const v5, 0x7f0d0053

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v2, Lcom/android/providers/downloads/ui/DefaultSaveSetting$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    .line 300
    const v5, 0x7f0d0108

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v2, Lcom/android/providers/downloads/ui/DefaultSaveSetting$HeaderViewHolder;->arrow:Landroid/widget/ImageView;

    .line 301
    const v5, 0x1020016

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v2, Lcom/android/providers/downloads/ui/DefaultSaveSetting$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 302
    const v5, 0x1020010

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v2, Lcom/android/providers/downloads/ui/DefaultSaveSetting$HeaderViewHolder;->summary:Landroid/widget/TextView;

    .line 303
    const v5, 0x7f0d0117

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/meizu/common/widget/Switch;

    iput-object v5, v2, Lcom/android/providers/downloads/ui/DefaultSaveSetting$HeaderViewHolder;->switchButton:Lcom/meizu/common/widget/Switch;

    .line 304
    invoke-virtual {p1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 305
    const/4 v5, 0x4

    if-ne p3, v5, :cond_1

    .line 306
    iget-object v5, v2, Lcom/android/providers/downloads/ui/DefaultSaveSetting$HeaderViewHolder;->title:Landroid/widget/TextView;

    const v6, 0x7f080052

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 307
    iget-object v5, v2, Lcom/android/providers/downloads/ui/DefaultSaveSetting$HeaderViewHolder;->summary:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 308
    iget-object v5, v2, Lcom/android/providers/downloads/ui/DefaultSaveSetting$HeaderViewHolder;->arrow:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 309
    iget-object v5, v2, Lcom/android/providers/downloads/ui/DefaultSaveSetting$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 310
    iget-object v5, v2, Lcom/android/providers/downloads/ui/DefaultSaveSetting$HeaderViewHolder;->switchButton:Lcom/meizu/common/widget/Switch;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lcom/meizu/common/widget/Switch;->setVisibility(I)V

    .line 344
    :cond_0
    :goto_0
    return-void

    .line 311
    :cond_1
    const/4 v5, 0x2

    if-ne p3, v5, :cond_2

    .line 312
    iget-object v5, v2, Lcom/android/providers/downloads/ui/DefaultSaveSetting$HeaderViewHolder;->title:Landroid/widget/TextView;

    const v6, 0x7f080053

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 313
    iget-object v5, p0, Lcom/android/providers/downloads/ui/DefaultSaveSetting$DownloadAdapter;->this$0:Lcom/android/providers/downloads/ui/DefaultSaveSetting;

    invoke-virtual {v5}, Lcom/android/providers/downloads/ui/DefaultSaveSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090005

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    .line 314
    .local v1, "download_numbers":[Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/android/providers/downloads/ui/DefaultSaveSetting$DownloadAdapter;->this$0:Lcom/android/providers/downloads/ui/DefaultSaveSetting;

    # getter for: Lcom/android/providers/downloads/ui/DefaultSaveSetting;->mPrefs:Landroid/content/SharedPreferences;
    invoke-static {v5}, Lcom/android/providers/downloads/ui/DefaultSaveSetting;->access$100(Lcom/android/providers/downloads/ui/DefaultSaveSetting;)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "max_downloads"

    const/4 v7, 0x4

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 315
    .local v3, "index":I
    iget-object v5, v2, Lcom/android/providers/downloads/ui/DefaultSaveSetting$HeaderViewHolder;->summary:Landroid/widget/TextView;

    aget-object v6, v1, v3

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 316
    iget-object v5, v2, Lcom/android/providers/downloads/ui/DefaultSaveSetting$HeaderViewHolder;->summary:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 317
    iget-object v5, v2, Lcom/android/providers/downloads/ui/DefaultSaveSetting$HeaderViewHolder;->arrow:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 318
    iget-object v5, v2, Lcom/android/providers/downloads/ui/DefaultSaveSetting$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 319
    iget-object v5, v2, Lcom/android/providers/downloads/ui/DefaultSaveSetting$HeaderViewHolder;->switchButton:Lcom/meizu/common/widget/Switch;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lcom/meizu/common/widget/Switch;->setVisibility(I)V

    goto :goto_0

    .line 320
    .end local v1    # "download_numbers":[Ljava/lang/CharSequence;
    .end local v3    # "index":I
    :cond_2
    const/4 v5, 0x3

    if-ne p3, v5, :cond_3

    .line 321
    iget-object v5, v2, Lcom/android/providers/downloads/ui/DefaultSaveSetting$HeaderViewHolder;->title:Landroid/widget/TextView;

    const v6, 0x7f080056

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 322
    iget-object v5, p0, Lcom/android/providers/downloads/ui/DefaultSaveSetting$DownloadAdapter;->this$0:Lcom/android/providers/downloads/ui/DefaultSaveSetting;

    invoke-virtual {v5}, Lcom/android/providers/downloads/ui/DefaultSaveSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090006

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    .line 323
    .local v0, "delete_limit_option":[Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/android/providers/downloads/ui/DefaultSaveSetting$DownloadAdapter;->this$0:Lcom/android/providers/downloads/ui/DefaultSaveSetting;

    # getter for: Lcom/android/providers/downloads/ui/DefaultSaveSetting;->mPrefs:Landroid/content/SharedPreferences;
    invoke-static {v5}, Lcom/android/providers/downloads/ui/DefaultSaveSetting;->access$100(Lcom/android/providers/downloads/ui/DefaultSaveSetting;)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "delete_limit"

    const/4 v7, 0x4

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 324
    .restart local v3    # "index":I
    iget-object v5, v2, Lcom/android/providers/downloads/ui/DefaultSaveSetting$HeaderViewHolder;->summary:Landroid/widget/TextView;

    aget-object v6, v0, v3

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 325
    iget-object v5, v2, Lcom/android/providers/downloads/ui/DefaultSaveSetting$HeaderViewHolder;->summary:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 326
    iget-object v5, v2, Lcom/android/providers/downloads/ui/DefaultSaveSetting$HeaderViewHolder;->arrow:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 327
    iget-object v5, v2, Lcom/android/providers/downloads/ui/DefaultSaveSetting$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 328
    iget-object v5, v2, Lcom/android/providers/downloads/ui/DefaultSaveSetting$HeaderViewHolder;->switchButton:Lcom/meizu/common/widget/Switch;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lcom/meizu/common/widget/Switch;->setVisibility(I)V

    goto/16 :goto_0

    .line 329
    .end local v0    # "delete_limit_option":[Ljava/lang/CharSequence;
    .end local v3    # "index":I
    :cond_3
    const/4 v5, 0x1

    if-ne p3, v5, :cond_0

    .line 330
    iget-object v5, v2, Lcom/android/providers/downloads/ui/DefaultSaveSetting$HeaderViewHolder;->title:Landroid/widget/TextView;

    const v6, 0x7f080054

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 331
    iget-object v5, v2, Lcom/android/providers/downloads/ui/DefaultSaveSetting$HeaderViewHolder;->summary:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 332
    iget-object v5, v2, Lcom/android/providers/downloads/ui/DefaultSaveSetting$HeaderViewHolder;->arrow:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 333
    iget-object v5, v2, Lcom/android/providers/downloads/ui/DefaultSaveSetting$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 334
    const/4 v4, 0x0

    .line 335
    .local v4, "onlyWifi":Z
    invoke-static {}, Lcom/android/providers/downloads/ui/DeviceUtils;->isChinaMobileCustom()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 336
    iget-object v5, p0, Lcom/android/providers/downloads/ui/DefaultSaveSetting$DownloadAdapter;->this$0:Lcom/android/providers/downloads/ui/DefaultSaveSetting;

    # getter for: Lcom/android/providers/downloads/ui/DefaultSaveSetting;->mPrefs:Landroid/content/SharedPreferences;
    invoke-static {v5}, Lcom/android/providers/downloads/ui/DefaultSaveSetting;->access$100(Lcom/android/providers/downloads/ui/DefaultSaveSetting;)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "download_only_wifi"

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 340
    :goto_1
    iget-object v5, v2, Lcom/android/providers/downloads/ui/DefaultSaveSetting$HeaderViewHolder;->switchButton:Lcom/meizu/common/widget/Switch;

    invoke-virtual {v5, v4}, Lcom/meizu/common/widget/Switch;->setChecked(Z)V

    .line 341
    iget-object v5, v2, Lcom/android/providers/downloads/ui/DefaultSaveSetting$HeaderViewHolder;->switchButton:Lcom/meizu/common/widget/Switch;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/meizu/common/widget/Switch;->setVisibility(I)V

    .line 342
    iget-object v5, v2, Lcom/android/providers/downloads/ui/DefaultSaveSetting$HeaderViewHolder;->switchButton:Lcom/meizu/common/widget/Switch;

    invoke-virtual {v5, p0}, Lcom/meizu/common/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto/16 :goto_0

    .line 338
    :cond_4
    iget-object v5, p0, Lcom/android/providers/downloads/ui/DefaultSaveSetting$DownloadAdapter;->this$0:Lcom/android/providers/downloads/ui/DefaultSaveSetting;

    # getter for: Lcom/android/providers/downloads/ui/DefaultSaveSetting;->mPrefs:Landroid/content/SharedPreferences;
    invoke-static {v5}, Lcom/android/providers/downloads/ui/DefaultSaveSetting;->access$100(Lcom/android/providers/downloads/ui/DefaultSaveSetting;)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "download_only_wifi"

    const/4 v7, 0x1

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    goto :goto_1
.end method

.method protected bridge synthetic bindView(Landroid/view/View;Landroid/content/Context;IILjava/lang/Object;II)V
    .locals 8
    .param p1, "x0"    # Landroid/view/View;
    .param p2, "x1"    # Landroid/content/Context;
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # Ljava/lang/Object;
    .param p6, "x5"    # I
    .param p7, "x6"    # I

    .prologue
    .line 259
    move-object v5, p5

    check-cast v5, Ljava/lang/CharSequence;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/providers/downloads/ui/DefaultSaveSetting$DownloadAdapter;->bindView(Landroid/view/View;Landroid/content/Context;IILjava/lang/CharSequence;II)V

    return-void
.end method

.method protected newHeaderView(Landroid/content/Context;IILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "position"    # I
    .param p3, "partitionIndex"    # I
    .param p4, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 270
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 271
    .local v0, "inflate":Landroid/view/LayoutInflater;
    const v1, 0x7f040034

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method protected newView(Landroid/content/Context;IILjava/lang/CharSequence;IILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "position"    # I
    .param p3, "partitionIndex"    # I
    .param p4, "object"    # Ljava/lang/CharSequence;
    .param p5, "offset"    # I
    .param p6, "itemBgType"    # I
    .param p7, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 291
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 292
    .local v0, "inflate":Landroid/view/LayoutInflater;
    const v1, 0x7f040077

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p7, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic newView(Landroid/content/Context;IILjava/lang/Object;IILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # Ljava/lang/Object;
    .param p5, "x4"    # I
    .param p6, "x5"    # I
    .param p7, "x6"    # Landroid/view/ViewGroup;

    .prologue
    .line 259
    move-object v4, p4

    check-cast v4, Ljava/lang/CharSequence;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    move v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/providers/downloads/ui/DefaultSaveSetting$DownloadAdapter;->newView(Landroid/content/Context;IILjava/lang/CharSequence;IILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 347
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DefaultSaveSetting$DownloadAdapter;->this$0:Lcom/android/providers/downloads/ui/DefaultSaveSetting;

    # getter for: Lcom/android/providers/downloads/ui/DefaultSaveSetting;->mPrefs:Landroid/content/SharedPreferences;
    invoke-static {v0}, Lcom/android/providers/downloads/ui/DefaultSaveSetting;->access$100(Lcom/android/providers/downloads/ui/DefaultSaveSetting;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "download_only_wifi"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 348
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DefaultSaveSetting$DownloadAdapter;->this$0:Lcom/android/providers/downloads/ui/DefaultSaveSetting;

    # getter for: Lcom/android/providers/downloads/ui/DefaultSaveSetting;->mDownloadAdapter:Lcom/android/providers/downloads/ui/DefaultSaveSetting$DownloadAdapter;
    invoke-static {v0}, Lcom/android/providers/downloads/ui/DefaultSaveSetting;->access$200(Lcom/android/providers/downloads/ui/DefaultSaveSetting;)Lcom/android/providers/downloads/ui/DefaultSaveSetting$DownloadAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/downloads/ui/DefaultSaveSetting$DownloadAdapter;->notifyDataSetChanged()V

    .line 349
    sget-boolean v0, Lcom/android/providers/downloads/ui/EventAgentUtils;->SWITCHER:Z

    if-eqz v0, :cond_0

    .line 350
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DefaultSaveSetting$DownloadAdapter;->this$0:Lcom/android/providers/downloads/ui/DefaultSaveSetting;

    const-string v2, "WLANonly"

    if-eqz p2, :cond_1

    const-string v0, "1"

    :goto_0
    invoke-static {v1, v2, v0}, Lcom/android/providers/downloads/ui/EventAgentUtils;->onAction(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    :cond_0
    return-void

    .line 350
    :cond_1
    const-string v0, "0"

    goto :goto_0
.end method
