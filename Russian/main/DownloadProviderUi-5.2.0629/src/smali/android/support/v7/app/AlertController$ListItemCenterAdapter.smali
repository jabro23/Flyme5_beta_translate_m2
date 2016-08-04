.class Landroid/support/v7/app/AlertController$ListItemCenterAdapter;
.super Landroid/widget/ArrayAdapter;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/AlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ListItemCenterAdapter"
.end annotation


# instance fields
.field context:Landroid/content/Context;

.field private resourceId:I

.field strings:[Ljava/lang/CharSequence;

.field textColor:Landroid/content/res/ColorStateList;

.field textColors:[Landroid/content/res/ColorStateList;

.field private textViewResourceId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II[Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resource"    # I
    .param p3, "textViewResourceId"    # I
    .param p4, "objects"    # [Ljava/lang/CharSequence;

    .prologue
    .line 964
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 965
    iput-object p1, p0, Landroid/support/v7/app/AlertController$ListItemCenterAdapter;->context:Landroid/content/Context;

    .line 966
    iput p2, p0, Landroid/support/v7/app/AlertController$ListItemCenterAdapter;->resourceId:I

    .line 967
    iput p3, p0, Landroid/support/v7/app/AlertController$ListItemCenterAdapter;->textViewResourceId:I

    .line 968
    iput-object p4, p0, Landroid/support/v7/app/AlertController$ListItemCenterAdapter;->strings:[Ljava/lang/CharSequence;

    .line 969
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II[Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resource"    # I
    .param p3, "textViewResourceId"    # I
    .param p4, "objects"    # [Ljava/lang/CharSequence;
    .param p5, "color"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 944
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 945
    iput-object p1, p0, Landroid/support/v7/app/AlertController$ListItemCenterAdapter;->context:Landroid/content/Context;

    .line 946
    iput p2, p0, Landroid/support/v7/app/AlertController$ListItemCenterAdapter;->resourceId:I

    .line 947
    iput p3, p0, Landroid/support/v7/app/AlertController$ListItemCenterAdapter;->textViewResourceId:I

    .line 948
    iput-object p4, p0, Landroid/support/v7/app/AlertController$ListItemCenterAdapter;->strings:[Ljava/lang/CharSequence;

    .line 949
    iput-object p5, p0, Landroid/support/v7/app/AlertController$ListItemCenterAdapter;->textColor:Landroid/content/res/ColorStateList;

    .line 950
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II[Ljava/lang/CharSequence;[Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resource"    # I
    .param p3, "textViewResourceId"    # I
    .param p4, "objects"    # [Ljava/lang/CharSequence;
    .param p5, "colors"    # [Landroid/content/res/ColorStateList;

    .prologue
    .line 954
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 955
    iput-object p1, p0, Landroid/support/v7/app/AlertController$ListItemCenterAdapter;->context:Landroid/content/Context;

    .line 956
    iput p2, p0, Landroid/support/v7/app/AlertController$ListItemCenterAdapter;->resourceId:I

    .line 957
    iput p3, p0, Landroid/support/v7/app/AlertController$ListItemCenterAdapter;->textViewResourceId:I

    .line 958
    iput-object p4, p0, Landroid/support/v7/app/AlertController$ListItemCenterAdapter;->strings:[Ljava/lang/CharSequence;

    .line 959
    iput-object p5, p0, Landroid/support/v7/app/AlertController$ListItemCenterAdapter;->textColors:[Landroid/content/res/ColorStateList;

    .line 960
    return-void
.end method


# virtual methods
.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 1001
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 974
    const/4 v0, 0x0

    .line 975
    .local v0, "holder":Landroid/support/v7/app/AlertController$ViewHolder;
    if-nez p2, :cond_1

    .line 976
    iget-object v2, p0, Landroid/support/v7/app/AlertController$ListItemCenterAdapter;->context:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 977
    .local v1, "inflater":Landroid/view/LayoutInflater;
    iget v2, p0, Landroid/support/v7/app/AlertController$ListItemCenterAdapter;->resourceId:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 978
    new-instance v0, Landroid/support/v7/app/AlertController$ViewHolder;

    .end local v0    # "holder":Landroid/support/v7/app/AlertController$ViewHolder;
    invoke-direct {v0}, Landroid/support/v7/app/AlertController$ViewHolder;-><init>()V

    .line 979
    .restart local v0    # "holder":Landroid/support/v7/app/AlertController$ViewHolder;
    iget v2, p0, Landroid/support/v7/app/AlertController$ListItemCenterAdapter;->textViewResourceId:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Landroid/support/v7/app/AlertController$ViewHolder;->item:Landroid/widget/TextView;

    .line 980
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 984
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    :goto_0
    iget-object v2, v0, Landroid/support/v7/app/AlertController$ViewHolder;->item:Landroid/widget/TextView;

    iget-object v3, p0, Landroid/support/v7/app/AlertController$ListItemCenterAdapter;->strings:[Ljava/lang/CharSequence;

    aget-object v3, v3, p1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 985
    iget-object v2, p0, Landroid/support/v7/app/AlertController$ListItemCenterAdapter;->textColors:[Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_2

    .line 986
    iget-object v2, v0, Landroid/support/v7/app/AlertController$ViewHolder;->item:Landroid/widget/TextView;

    iget-object v3, p0, Landroid/support/v7/app/AlertController$ListItemCenterAdapter;->textColors:[Landroid/content/res/ColorStateList;

    aget-object v3, v3, p1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 990
    :cond_0
    :goto_1
    return-object p2

    .line 982
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "holder":Landroid/support/v7/app/AlertController$ViewHolder;
    check-cast v0, Landroid/support/v7/app/AlertController$ViewHolder;

    .restart local v0    # "holder":Landroid/support/v7/app/AlertController$ViewHolder;
    goto :goto_0

    .line 987
    :cond_2
    iget-object v2, p0, Landroid/support/v7/app/AlertController$ListItemCenterAdapter;->textColor:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_0

    .line 988
    iget-object v2, v0, Landroid/support/v7/app/AlertController$ViewHolder;->item:Landroid/widget/TextView;

    iget-object v3, p0, Landroid/support/v7/app/AlertController$ListItemCenterAdapter;->textColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_1
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 996
    const/4 v0, 0x1

    return v0
.end method
