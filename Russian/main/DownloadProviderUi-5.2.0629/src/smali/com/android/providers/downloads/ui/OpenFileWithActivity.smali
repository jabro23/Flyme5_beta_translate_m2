.class public Lcom/android/providers/downloads/ui/OpenFileWithActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "OpenFileWithActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/downloads/ui/OpenFileWithActivity$DownloadInfoObserver;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final projection:[Ljava/lang/String;


# instance fields
.field private mCursor:Landroid/database/Cursor;

.field private mDataColumnId:I

.field private mDialogType:I

.field private mHitColumnId:I

.field private mObserver:Lcom/android/providers/downloads/ui/OpenFileWithActivity$DownloadInfoObserver;

.field private mPara:Lcom/android/internal/app/AlertController$AlertParams;

.field private mStatusColumnId:I

.field private mTitleColumnId:I

.field private mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 27
    const-class v0, Lcom/android/providers/downloads/ui/OpenFileWithActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->$assertionsDisabled:Z

    .line 52
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "title"

    aput-object v3, v0, v2

    const-string v2, "status"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "hint"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "_data"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->projection:[Ljava/lang/String;

    return-void

    :cond_0
    move v0, v2

    .line 27
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->mTitleColumnId:I

    .line 42
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->mStatusColumnId:I

    .line 43
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->mHitColumnId:I

    .line 44
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->mDataColumnId:I

    .line 55
    return-void
.end method

.method static synthetic access$000(Lcom/android/providers/downloads/ui/OpenFileWithActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/providers/downloads/ui/OpenFileWithActivity;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->updateDownloadInfo()V

    return-void
.end method

.method private deleteSelected(Landroid/database/Cursor;)V
    .locals 3
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v2, 0x0

    .line 385
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 386
    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 388
    :cond_0
    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->dismiss()V

    .line 389
    return-void
.end method

.method private setDialogType()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x2

    .line 87
    iget-object v1, p0, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    iget-object v1, p0, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->mCursor:Landroid/database/Cursor;

    iget v2, p0, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->mStatusColumnId:I

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 89
    .local v0, "status":I
    invoke-direct {p0, v0}, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->translateStatus(I)I

    move-result v0

    .line 90
    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 91
    iput v4, p0, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->mDialogType:I

    .line 104
    .end local v0    # "status":I
    :cond_0
    :goto_0
    return-void

    .line 92
    .restart local v0    # "status":I
    :cond_1
    const/16 v1, 0x10

    if-ne v0, v1, :cond_2

    .line 93
    iput v3, p0, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->mDialogType:I

    goto :goto_0

    .line 95
    :cond_2
    if-eq v0, v3, :cond_3

    if-ne v0, v4, :cond_4

    .line 96
    :cond_3
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->mDialogType:I

    goto :goto_0

    .line 97
    :cond_4
    if-ne v0, v5, :cond_5

    .line 98
    iput v5, p0, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->mDialogType:I

    goto :goto_0

    .line 100
    :cond_5
    iput v3, p0, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->mDialogType:I

    goto :goto_0
.end method

.method private showDialog()V
    .locals 9

    .prologue
    const v8, 0x7f08003c

    const v7, 0x7f08003e

    const v6, 0xa020174

    .line 107
    iget-object v4, p0, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->mCursor:Landroid/database/Cursor;

    iget v5, p0, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->mTitleColumnId:I

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 108
    .local v3, "title":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 109
    :cond_0
    iget-object v4, p0, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->mCursor:Landroid/database/Cursor;

    iget v5, p0, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->mHitColumnId:I

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 110
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 111
    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 112
    .local v1, "lastIndex":I
    if-lez v1, :cond_1

    .line 113
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 117
    .end local v1    # "lastIndex":I
    :cond_1
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_3

    .line 118
    :cond_2
    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f08003f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 120
    :cond_3
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".tmp"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 121
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    .line 122
    .local v2, "length":I
    const/4 v4, 0x4

    if-le v2, v4, :cond_4

    .line 123
    const/4 v4, 0x0

    add-int/lit8 v5, v2, -0x4

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 127
    .end local v2    # "length":I
    :cond_4
    iget-object v4, p0, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object v4, p0, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    .line 128
    iget v4, p0, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->mDialogType:I

    packed-switch v4, :pswitch_data_0

    .line 179
    :goto_0
    iget-object v4, p0, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 180
    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->setupAlert()V

    .line 181
    return-void

    .line 130
    :pswitch_0
    iget-object v4, p0, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->mCursor:Landroid/database/Cursor;

    iget v5, p0, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->mDataColumnId:I

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, "filename":Ljava/lang/String;
    if-eqz v0, :cond_5

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_5

    .line 132
    iget-object v4, p0, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    iput v6, v4, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    .line 133
    iget-object v4, p0, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    const v5, 0x7f080037

    invoke-virtual {p0, v5}, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 134
    iget-object v4, p0, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\" "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f080040

    invoke-virtual {p0, v6}, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 135
    iget-object v4, p0, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    const v5, 0x104000a

    invoke-virtual {p0, v5}, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 136
    iget-object v4, p0, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, v4, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 137
    iget-object v4, p0, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    invoke-virtual {p0, v7}, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 138
    iget-object v4, p0, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, v4, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    goto :goto_0

    .line 140
    :cond_5
    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->dismiss()V

    goto :goto_0

    .line 144
    .end local v0    # "filename":Ljava/lang/String;
    :pswitch_1
    iget-object v4, p0, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    iput v6, v4, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    .line 145
    iget-object v4, p0, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object v3, v4, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 146
    iget-object v4, p0, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    const v5, 0x7f080033

    invoke-virtual {p0, v5}, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 147
    iget-object v4, p0, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    invoke-virtual {p0, v8}, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 148
    iget-object v4, p0, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, v4, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 149
    iget-object v4, p0, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    const v5, 0x7f080036

    invoke-virtual {p0, v5}, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/internal/app/AlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    .line 150
    iget-object v4, p0, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, v4, Lcom/android/internal/app/AlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 151
    iget-object v4, p0, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    invoke-virtual {p0, v7}, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 152
    iget-object v4, p0, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, v4, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    goto/16 :goto_0

    .line 155
    :pswitch_2
    iget-object v4, p0, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    iput v6, v4, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    .line 156
    iget-object v4, p0, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object v3, v4, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 157
    iget-object v4, p0, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    const v5, 0x7f08003a

    invoke-virtual {p0, v5}, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 158
    iget-object v4, p0, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    invoke-virtual {p0, v8}, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 159
    iget-object v4, p0, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, v4, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 160
    iget-object v4, p0, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    const v5, 0x7f080038

    invoke-virtual {p0, v5}, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/internal/app/AlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    .line 161
    iget-object v4, p0, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, v4, Lcom/android/internal/app/AlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 162
    iget-object v4, p0, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    invoke-virtual {p0, v7}, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 163
    iget-object v4, p0, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, v4, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    goto/16 :goto_0

    .line 166
    :pswitch_3
    iget-object v4, p0, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    iput v6, v4, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    .line 167
    iget-object v4, p0, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object v3, v4, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 168
    iget-object v4, p0, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    const v5, 0x7f080032

    invoke-virtual {p0, v5}, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 169
    iget-object v4, p0, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    invoke-virtual {p0, v8}, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 170
    iget-object v4, p0, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, v4, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 171
    iget-object v4, p0, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    const v5, 0x7f080039

    invoke-virtual {p0, v5}, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/internal/app/AlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    .line 172
    iget-object v4, p0, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, v4, Lcom/android/internal/app/AlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 173
    iget-object v4, p0, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    invoke-virtual {p0, v7}, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 174
    iget-object v4, p0, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, v4, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    goto/16 :goto_0

    .line 128
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private showInsufficientSpaceDialog(Z)V
    .locals 2
    .param p1, "showMessage"    # Z

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object v0, p0, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    .line 185
    iget-object v0, p0, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    const v1, 0x7f08004f

    invoke-virtual {p0, v1}, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 186
    if-eqz p1, :cond_0

    .line 187
    iget-object v0, p0, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    const v1, 0x7f080051

    invoke-virtual {p0, v1}, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    const v1, 0x7f080050

    invoke-virtual {p0, v1}, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 189
    iget-object v0, p0, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 190
    iget-object v0, p0, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    const/high16 v1, 0x1040000

    invoke-virtual {p0, v1}, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 191
    iget-object v0, p0, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 192
    iget-object v0, p0, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 193
    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->setupAlert()V

    .line 194
    return-void
.end method

.method private toastWlan()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 280
    const/4 v1, 0x0

    .line 282
    .local v1, "context":Landroid/content/Context;
    :try_start_0
    const-string v6, "com.android.providers.downloads"

    const/4 v7, 0x2

    invoke-virtual {p0, v6, v7}, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 287
    :goto_0
    const-string v6, "com.android.providers.downloads.save_preference"

    invoke-virtual {v1, v6, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 289
    .local v3, "mPrefs":Landroid/content/SharedPreferences;
    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "connectivity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 291
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v4

    .line 292
    .local v4, "networkInfo":Landroid/net/NetworkInfo;
    const/4 v5, 0x0

    .line 293
    .local v5, "onlyWifi":Z
    invoke-static {}, Lcom/android/providers/downloads/ui/DeviceUtils;->isChinaMobileCustom()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 294
    const-string v6, "download_only_wifi"

    invoke-interface {v3, v6, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 298
    :goto_1
    if-eqz v5, :cond_0

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    if-nez v6, :cond_0

    .line 299
    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f080017

    invoke-virtual {p0, v7}, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 301
    :cond_0
    return-void

    .line 283
    .end local v0    # "connectivityManager":Landroid/net/ConnectivityManager;
    .end local v3    # "mPrefs":Landroid/content/SharedPreferences;
    .end local v4    # "networkInfo":Landroid/net/NetworkInfo;
    .end local v5    # "onlyWifi":Z
    :catch_0
    move-exception v2

    .line 285
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 296
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0    # "connectivityManager":Landroid/net/ConnectivityManager;
    .restart local v3    # "mPrefs":Landroid/content/SharedPreferences;
    .restart local v4    # "networkInfo":Landroid/net/NetworkInfo;
    .restart local v5    # "onlyWifi":Z
    :cond_1
    const-string v6, "download_only_wifi"

    const/4 v7, 0x1

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    goto :goto_1
.end method

.method private translateStatus(I)I
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 304
    packed-switch p1, :pswitch_data_0

    .line 321
    :pswitch_0
    sget-boolean v0, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/provider/Downloads$Impl;->isStatusError(I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 306
    :pswitch_1
    const/4 v0, 0x1

    .line 322
    :goto_0
    return v0

    .line 309
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 315
    :pswitch_3
    const/4 v0, 0x4

    goto :goto_0

    .line 318
    :pswitch_4
    const/16 v0, 0x8

    goto :goto_0

    .line 322
    :cond_0
    const/16 v0, 0x10

    goto :goto_0

    .line 304
    nop

    :pswitch_data_0
    .packed-switch 0xbe
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private updateDownloadInfo()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    .line 327
    iget-object v1, p0, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_2

    .line 328
    iget-object v1, p0, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->requery()Z

    .line 329
    iget-object v1, p0, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 330
    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->dismiss()V

    .line 366
    :cond_0
    :goto_0
    return-void

    .line 333
    :cond_1
    iget-object v1, p0, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 335
    :cond_2
    iget v1, p0, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->mDialogType:I

    if-ne v1, v3, :cond_4

    .line 336
    iget-object v1, p0, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_3

    .line 337
    iget-object v1, p0, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->mCursor:Landroid/database/Cursor;

    iget v2, p0, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->mStatusColumnId:I

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 338
    .local v0, "status":I
    invoke-direct {p0, v0}, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->translateStatus(I)I

    move-result v0

    .line 339
    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    .line 340
    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->dismiss()V

    goto :goto_0

    .line 343
    .end local v0    # "status":I
    :cond_3
    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->dismiss()V

    goto :goto_0

    .line 345
    :cond_4
    iget v1, p0, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->mDialogType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_6

    .line 346
    iget-object v1, p0, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_5

    .line 347
    iget-object v1, p0, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->mCursor:Landroid/database/Cursor;

    iget v2, p0, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->mStatusColumnId:I

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 348
    .restart local v0    # "status":I
    invoke-direct {p0, v0}, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->translateStatus(I)I

    move-result v0

    .line 349
    if-eq v0, v3, :cond_0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 350
    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->dismiss()V

    goto :goto_0

    .line 353
    .end local v0    # "status":I
    :cond_5
    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->dismiss()V

    goto :goto_0

    .line 355
    :cond_6
    iget v1, p0, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->mDialogType:I

    if-ne v1, v4, :cond_0

    .line 356
    iget-object v1, p0, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_7

    .line 357
    iget-object v1, p0, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->mCursor:Landroid/database/Cursor;

    iget v2, p0, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->mStatusColumnId:I

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 358
    .restart local v0    # "status":I
    invoke-direct {p0, v0}, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->translateStatus(I)I

    move-result v0

    .line 359
    if-eq v0, v4, :cond_0

    .line 360
    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->dismiss()V

    goto :goto_0

    .line 363
    .end local v0    # "status":I
    :cond_7
    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->dismiss()V

    goto :goto_0
.end method

.method private updateStatus(Landroid/database/Cursor;I)V
    .locals 6
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "status"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 369
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 370
    .local v0, "values":Landroid/content/ContentValues;
    const/4 v1, 0x2

    if-eq p2, v1, :cond_0

    if-ne p2, v4, :cond_2

    .line 371
    :cond_0
    const-string v1, "status"

    const/16 v2, 0xc1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 375
    :goto_0
    const/16 v1, 0x8

    if-ne p2, v1, :cond_1

    .line 376
    const-string v1, "scanned"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 377
    const-string v1, "current_bytes"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 378
    const-string v1, "visibility"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 380
    :cond_1
    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 381
    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->dismiss()V

    .line 382
    return-void

    .line 373
    :cond_2
    const-string v1, "status"

    const/16 v2, 0xbe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v4, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x4

    const/4 v5, 0x2

    .line 208
    packed-switch p2, :pswitch_data_0

    .line 273
    :cond_0
    :goto_0
    return-void

    .line 210
    :pswitch_0
    iget v3, p0, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->mDialogType:I

    if-ne v3, v5, :cond_2

    .line 211
    iget-object v3, p0, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_1

    .line 212
    iget-object v3, p0, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->mCursor:Landroid/database/Cursor;

    iget v4, p0, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->mStatusColumnId:I

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 213
    .local v2, "status":I
    invoke-direct {p0, v2}, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->translateStatus(I)I

    move-result v2

    .line 214
    const/16 v3, 0x10

    if-ne v2, v3, :cond_0

    .line 215
    iget-object v3, p0, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->mCursor:Landroid/database/Cursor;

    invoke-direct {p0, v3, v2}, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->updateStatus(Landroid/database/Cursor;I)V

    goto :goto_0

    .line 218
    .end local v2    # "status":I
    :cond_1
    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->dismiss()V

    goto :goto_0

    .line 220
    :cond_2
    iget v3, p0, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->mDialogType:I

    if-ne v3, v4, :cond_5

    .line 221
    iget-object v3, p0, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_4

    .line 222
    iget-object v3, p0, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->mCursor:Landroid/database/Cursor;

    iget v4, p0, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->mStatusColumnId:I

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 223
    .restart local v2    # "status":I
    invoke-direct {p0, v2}, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->translateStatus(I)I

    move-result v2

    .line 224
    if-eq v2, v5, :cond_3

    if-ne v2, v7, :cond_0

    .line 225
    :cond_3
    iget-object v3, p0, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->mCursor:Landroid/database/Cursor;

    invoke-direct {p0, v3, v2}, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->updateStatus(Landroid/database/Cursor;I)V

    goto :goto_0

    .line 228
    .end local v2    # "status":I
    :cond_4
    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->dismiss()V

    goto :goto_0

    .line 230
    :cond_5
    iget v3, p0, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->mDialogType:I

    if-ne v3, v6, :cond_0

    .line 231
    iget-object v3, p0, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_6

    .line 232
    iget-object v3, p0, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->mCursor:Landroid/database/Cursor;

    iget v4, p0, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->mStatusColumnId:I

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 233
    .restart local v2    # "status":I
    invoke-direct {p0, v2}, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->translateStatus(I)I

    move-result v2

    .line 234
    if-ne v2, v6, :cond_0

    .line 235
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->toastWlan()V

    .line 236
    iget-object v3, p0, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->mCursor:Landroid/database/Cursor;

    invoke-direct {p0, v3, v2}, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->updateStatus(Landroid/database/Cursor;I)V

    goto :goto_0

    .line 239
    .end local v2    # "status":I
    :cond_6
    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->dismiss()V

    goto :goto_0

    .line 244
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->dismiss()V

    goto/16 :goto_0

    .line 247
    :pswitch_2
    iget v3, p0, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->mDialogType:I

    if-ne v3, v5, :cond_7

    .line 248
    iget-object v3, p0, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->mCursor:Landroid/database/Cursor;

    invoke-direct {p0, v3}, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->deleteSelected(Landroid/database/Cursor;)V

    goto/16 :goto_0

    .line 249
    :cond_7
    iget v3, p0, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->mDialogType:I

    if-ne v3, v4, :cond_8

    .line 250
    iget-object v3, p0, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->mCursor:Landroid/database/Cursor;

    invoke-direct {p0, v3}, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->deleteSelected(Landroid/database/Cursor;)V

    goto/16 :goto_0

    .line 251
    :cond_8
    iget v3, p0, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->mDialogType:I

    if-ne v3, v6, :cond_9

    .line 252
    iget-object v3, p0, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->mCursor:Landroid/database/Cursor;

    invoke-direct {p0, v3}, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->deleteSelected(Landroid/database/Cursor;)V

    goto/16 :goto_0

    .line 253
    :cond_9
    iget v3, p0, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->mDialogType:I

    if-ne v3, v7, :cond_a

    .line 254
    iget-object v3, p0, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->mCursor:Landroid/database/Cursor;

    iget v4, p0, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->mStatusColumnId:I

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 255
    .restart local v2    # "status":I
    invoke-direct {p0, v2}, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->translateStatus(I)I

    move-result v2

    .line 256
    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    .line 257
    iget-object v3, p0, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->mCursor:Landroid/database/Cursor;

    invoke-direct {p0, v3, v2}, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->updateStatus(Landroid/database/Cursor;I)V

    goto/16 :goto_0

    .line 259
    .end local v2    # "status":I
    :cond_a
    iget v3, p0, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->mDialogType:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_0

    .line 260
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.meizu.safe.junkclean"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 261
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v3, 0x34000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 263
    const-string v3, "content://com.meizu.safe.junkclean/source?event=free_momery"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 265
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    :goto_1
    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->dismiss()V

    goto/16 :goto_0

    .line 266
    :catch_0
    move-exception v0

    .line 267
    .local v0, "ex":Landroid/content/ActivityNotFoundException;
    const-string v3, "DownloadManager"

    const-string v4, "jump to JUNK_CLEAN failed!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 208
    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 67
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 69
    .local v6, "intent":Landroid/content/Intent;
    const-string v0, "com.meizu.intent.action.INSUFFICENT_SPACE_DIALOG"

    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->mDialogType:I

    .line 71
    const-string v0, "showmessage"

    invoke-virtual {v6, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->showInsufficientSpaceDialog(Z)V

    .line 84
    :goto_0
    return-void

    .line 74
    :cond_0
    invoke-virtual {v6}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->mUri:Landroid/net/Uri;

    .line 75
    new-instance v0, Lcom/android/providers/downloads/ui/OpenFileWithActivity$DownloadInfoObserver;

    invoke-direct {v0, p0}, Lcom/android/providers/downloads/ui/OpenFileWithActivity$DownloadInfoObserver;-><init>(Lcom/android/providers/downloads/ui/OpenFileWithActivity;)V

    iput-object v0, p0, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->mObserver:Lcom/android/providers/downloads/ui/OpenFileWithActivity$DownloadInfoObserver;

    .line 76
    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->mUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->mObserver:Lcom/android/providers/downloads/ui/OpenFileWithActivity$DownloadInfoObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 77
    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->mUri:Landroid/net/Uri;

    sget-object v2, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->projection:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->mCursor:Landroid/database/Cursor;

    .line 78
    iget-object v0, p0, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_2

    .line 79
    :cond_1
    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->dismiss()V

    goto :goto_0

    .line 82
    :cond_2
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->setDialogType()V

    .line 83
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->showDialog()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 198
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    .line 199
    iget-object v0, p0, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->mObserver:Lcom/android/providers/downloads/ui/OpenFileWithActivity$DownloadInfoObserver;

    if-eqz v0, :cond_0

    .line 200
    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->mObserver:Lcom/android/providers/downloads/ui/OpenFileWithActivity$DownloadInfoObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 203
    iget-object v0, p0, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 205
    :cond_1
    return-void
.end method
