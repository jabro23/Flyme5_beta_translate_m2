.class public Lcom/android/providers/downloads/ui/DownloadActivity;
.super Landroid/support/v7/app/ActionBarActivity;
.source "DownloadActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/downloads/ui/DownloadActivity$SelectionModeCallback;,
        Lcom/android/providers/downloads/ui/DownloadActivity$DownloadListHandler;,
        Lcom/android/providers/downloads/ui/DownloadActivity$ListViewType;
    }
.end annotation


# static fields
.field static final ACCEPTED_URI_SCHEMA:Ljava/util/regex/Pattern;

.field public static sDialogField:Ljava/lang/reflect/Field;


# instance fields
.field private LOADER_CALLBACKS:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private isSlideNoticeShow:Z

.field private mBusy:Z

.field mCompleteIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mDeleteDialog:Landroid/support/v7/app/AlertDialog;

.field private mDeleteSeletedId:J

.field private mDownloadCursor:Landroid/database/Cursor;

.field private mDownloadListHandler:Lcom/android/providers/downloads/ui/DownloadActivity$DownloadListHandler;

.field private mDownloadManager:Landroid/app/DownloadManager;

.field private mDownloadReceiver:Landroid/content/BroadcastReceiver;

.field private mDownloadedAdapter:Lcom/android/providers/downloads/ui/DownloadedRecyclerAdapter;

.field private mDownloadedEmptyShow:Z

.field private mDownloadedListView:Lflyme/support/v7/widget/MzRecyclerView;

.field private mDownloadedView:Landroid/widget/FrameLayout;

.field private mDownloadingAdapter:Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter;

.field private mDownloadingEmptyShow:Z

.field private mDownloadingListView:Lflyme/support/v7/widget/MzRecyclerView;

.field private mDownloadingView:Landroid/widget/FrameLayout;

.field private mFlag_First:Z

.field private mHomepageViewPager:Landroid/support/v4/view/ViewPager;

.field mIdPositions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mNeedUpdate:Z

.field private mNetWorkSlideNotice:Lcom/meizu/common/app/SlideNotice;

.field private mNewTaskView:Landroid/view/View;

.field private mNumberOfComplete:I

.field private mNumberOfUnComplete:I

.field private mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private mOnScrollListener:Lflyme/support/v7/widget/RecyclerView$OnScrollListener;

.field private mPaddingBottom:I

.field private mPaddingLeft:I

.field private mPaddingRight:I

.field private mPaddingTop:I

.field private mPagerAdapter:Landroid/support/v4/view/PagerAdapter;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mSelectionMode:Landroid/view/ActionMode;

.field private mTabListener:Landroid/support/v7/app/ActionBar$TabListener;

.field mUnCompleteIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mViewList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x0

    sput-object v0, Lcom/android/providers/downloads/ui/DownloadActivity;->sDialogField:Ljava/lang/reflect/Field;

    .line 1365
    const-string v0, "(?i)((?:http|https|file):\\/\\/|(?:inline|data|about|javascript):)(.*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/providers/downloads/ui/DownloadActivity;->ACCEPTED_URI_SCHEMA:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v1, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 113
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;-><init>()V

    .line 126
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mFlag_First:Z

    .line 136
    iput-boolean v2, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mDownloadedEmptyShow:Z

    .line 137
    iput-boolean v2, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mDownloadingEmptyShow:Z

    .line 138
    iput v1, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mNumberOfComplete:I

    .line 139
    iput v1, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mNumberOfUnComplete:I

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mCompleteIds:Ljava/util/ArrayList;

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mUnCompleteIds:Ljava/util/ArrayList;

    .line 142
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mIdPositions:Ljava/util/HashMap;

    .line 144
    iput-object v3, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mNewTaskView:Landroid/view/View;

    .line 145
    iput-object v3, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mDeleteDialog:Landroid/support/v7/app/AlertDialog;

    .line 146
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mDeleteSeletedId:J

    .line 147
    iput-object v3, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mNetWorkSlideNotice:Lcom/meizu/common/app/SlideNotice;

    .line 149
    iput-object v3, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 151
    new-instance v0, Lcom/android/providers/downloads/ui/DownloadActivity$DownloadListHandler;

    invoke-direct {v0, p0}, Lcom/android/providers/downloads/ui/DownloadActivity$DownloadListHandler;-><init>(Lcom/android/providers/downloads/ui/DownloadActivity;)V

    iput-object v0, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mDownloadListHandler:Lcom/android/providers/downloads/ui/DownloadActivity$DownloadListHandler;

    .line 153
    iput-boolean v2, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mBusy:Z

    .line 154
    iput-boolean v2, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mNeedUpdate:Z

    .line 160
    iput-boolean v2, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->isSlideNoticeShow:Z

    .line 162
    new-instance v0, Lcom/android/providers/downloads/ui/DownloadActivity$1;

    invoke-direct {v0, p0}, Lcom/android/providers/downloads/ui/DownloadActivity$1;-><init>(Lcom/android/providers/downloads/ui/DownloadActivity;)V

    iput-object v0, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mDownloadReceiver:Landroid/content/BroadcastReceiver;

    .line 172
    new-instance v0, Lcom/android/providers/downloads/ui/DownloadActivity$2;

    invoke-direct {v0, p0}, Lcom/android/providers/downloads/ui/DownloadActivity$2;-><init>(Lcom/android/providers/downloads/ui/DownloadActivity;)V

    iput-object v0, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mTabListener:Landroid/support/v7/app/ActionBar$TabListener;

    .line 188
    new-instance v0, Lcom/android/providers/downloads/ui/DownloadActivity$3;

    invoke-direct {v0, p0}, Lcom/android/providers/downloads/ui/DownloadActivity$3;-><init>(Lcom/android/providers/downloads/ui/DownloadActivity;)V

    iput-object v0, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 218
    new-instance v0, Lcom/android/providers/downloads/ui/DownloadActivity$4;

    invoke-direct {v0, p0}, Lcom/android/providers/downloads/ui/DownloadActivity$4;-><init>(Lcom/android/providers/downloads/ui/DownloadActivity;)V

    iput-object v0, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->LOADER_CALLBACKS:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 389
    new-instance v0, Lcom/android/providers/downloads/ui/DownloadActivity$6;

    invoke-direct {v0, p0}, Lcom/android/providers/downloads/ui/DownloadActivity$6;-><init>(Lcom/android/providers/downloads/ui/DownloadActivity;)V

    iput-object v0, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mOnScrollListener:Lflyme/support/v7/widget/RecyclerView$OnScrollListener;

    .line 2023
    return-void
.end method

.method static synthetic access$000(Lcom/android/providers/downloads/ui/DownloadActivity;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .param p0, "x0"    # Lcom/android/providers/downloads/ui/DownloadActivity;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mHomepageViewPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/providers/downloads/ui/DownloadActivity;)Landroid/view/ActionMode;
    .locals 1
    .param p0, "x0"    # Lcom/android/providers/downloads/ui/DownloadActivity;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mSelectionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/providers/downloads/ui/DownloadActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/providers/downloads/ui/DownloadActivity;

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadActivity;->requestData()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/providers/downloads/ui/DownloadActivity;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 0
    .param p0, "x0"    # Lcom/android/providers/downloads/ui/DownloadActivity;
    .param p1, "x1"    # Landroid/view/ActionMode;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mSelectionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/providers/downloads/ui/DownloadActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/providers/downloads/ui/DownloadActivity;

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mNeedUpdate:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/android/providers/downloads/ui/DownloadActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/providers/downloads/ui/DownloadActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 113
    iput-boolean p1, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mNeedUpdate:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/providers/downloads/ui/DownloadActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/providers/downloads/ui/DownloadActivity;

    .prologue
    .line 113
    iget-wide v0, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mDeleteSeletedId:J

    return-wide v0
.end method

.method static synthetic access$1202(Lcom/android/providers/downloads/ui/DownloadActivity;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/providers/downloads/ui/DownloadActivity;
    .param p1, "x1"    # J

    .prologue
    .line 113
    iput-wide p1, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mDeleteSeletedId:J

    return-wide p1
.end method

.method static synthetic access$1300(Lcom/android/providers/downloads/ui/DownloadActivity;J)V
    .locals 1
    .param p0, "x0"    # Lcom/android/providers/downloads/ui/DownloadActivity;
    .param p1, "x1"    # J

    .prologue
    .line 113
    invoke-direct {p0, p1, p2}, Lcom/android/providers/downloads/ui/DownloadActivity;->deleteItemById(J)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/providers/downloads/ui/DownloadActivity;)Landroid/support/v7/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/providers/downloads/ui/DownloadActivity;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mDeleteDialog:Landroid/support/v7/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/providers/downloads/ui/DownloadActivity;Landroid/support/v7/app/AlertDialog;)Landroid/support/v7/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/providers/downloads/ui/DownloadActivity;
    .param p1, "x1"    # Landroid/support/v7/app/AlertDialog;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mDeleteDialog:Landroid/support/v7/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/providers/downloads/ui/DownloadActivity;JLjava/lang/String;)V
    .locals 1
    .param p0, "x0"    # Lcom/android/providers/downloads/ui/DownloadActivity;
    .param p1, "x1"    # J
    .param p3, "x2"    # Ljava/lang/String;

    .prologue
    .line 113
    invoke-direct {p0, p1, p2, p3}, Lcom/android/providers/downloads/ui/DownloadActivity;->showDeleteDialog(JLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/providers/downloads/ui/DownloadActivity;JI)V
    .locals 1
    .param p0, "x0"    # Lcom/android/providers/downloads/ui/DownloadActivity;
    .param p1, "x1"    # J
    .param p3, "x2"    # I

    .prologue
    .line 113
    invoke-direct {p0, p1, p2, p3}, Lcom/android/providers/downloads/ui/DownloadActivity;->updateStatus(JI)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/providers/downloads/ui/DownloadActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/providers/downloads/ui/DownloadActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 113
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/ui/DownloadActivity;->getTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/providers/downloads/ui/DownloadActivity;Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/providers/downloads/ui/DownloadActivity;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 113
    invoke-direct {p0, p1, p2}, Lcom/android/providers/downloads/ui/DownloadActivity;->matchUpdateBinFile(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/providers/downloads/ui/DownloadActivity;Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/providers/downloads/ui/DownloadActivity;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 113
    invoke-direct {p0, p1, p2}, Lcom/android/providers/downloads/ui/DownloadActivity;->isAppLocalInstall(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$202(Lcom/android/providers/downloads/ui/DownloadActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/providers/downloads/ui/DownloadActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 113
    iput-boolean p1, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mBusy:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/providers/downloads/ui/DownloadActivity;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/providers/downloads/ui/DownloadActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 113
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/ui/DownloadActivity;->isUrl(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcom/android/providers/downloads/ui/DownloadActivity;Landroid/support/v7/app/AlertDialog;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/providers/downloads/ui/DownloadActivity;
    .param p1, "x1"    # Landroid/support/v7/app/AlertDialog;
    .param p2, "x2"    # Z

    .prologue
    .line 113
    invoke-direct {p0, p1, p2}, Lcom/android/providers/downloads/ui/DownloadActivity;->setDialogDismissable(Landroid/support/v7/app/AlertDialog;Z)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/providers/downloads/ui/DownloadActivity;)Lcom/android/providers/downloads/ui/DownloadActivity$DownloadListHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/providers/downloads/ui/DownloadActivity;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mDownloadListHandler:Lcom/android/providers/downloads/ui/DownloadActivity$DownloadListHandler;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/providers/downloads/ui/DownloadActivity;)Landroid/app/DownloadManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/providers/downloads/ui/DownloadActivity;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mDownloadManager:Landroid/app/DownloadManager;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/providers/downloads/ui/DownloadActivity;Landroid/database/Cursor;J)V
    .locals 0
    .param p0, "x0"    # Lcom/android/providers/downloads/ui/DownloadActivity;
    .param p1, "x1"    # Landroid/database/Cursor;
    .param p2, "x2"    # J

    .prologue
    .line 113
    invoke-direct {p0, p1, p2, p3}, Lcom/android/providers/downloads/ui/DownloadActivity;->delFromeDiskIfCompeled(Landroid/database/Cursor;J)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/providers/downloads/ui/DownloadActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/providers/downloads/ui/DownloadActivity;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/android/providers/downloads/ui/DownloadActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/providers/downloads/ui/DownloadActivity;
    .param p1, "x1"    # Landroid/app/ProgressDialog;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$2800(Lcom/android/providers/downloads/ui/DownloadActivity;)Landroid/app/LoaderManager$LoaderCallbacks;
    .locals 1
    .param p0, "x0"    # Lcom/android/providers/downloads/ui/DownloadActivity;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->LOADER_CALLBACKS:Landroid/app/LoaderManager$LoaderCallbacks;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/providers/downloads/ui/DownloadActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/providers/downloads/ui/DownloadActivity;

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mDownloadingEmptyShow:Z

    return v0
.end method

.method static synthetic access$2902(Lcom/android/providers/downloads/ui/DownloadActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/providers/downloads/ui/DownloadActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 113
    iput-boolean p1, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mDownloadingEmptyShow:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/providers/downloads/ui/DownloadActivity;)Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/providers/downloads/ui/DownloadActivity;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mDownloadingAdapter:Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/providers/downloads/ui/DownloadActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/providers/downloads/ui/DownloadActivity;

    .prologue
    .line 113
    iget v0, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mNumberOfUnComplete:I

    return v0
.end method

.method static synthetic access$3100(Lcom/android/providers/downloads/ui/DownloadActivity;)Lflyme/support/v7/widget/MzRecyclerView;
    .locals 1
    .param p0, "x0"    # Lcom/android/providers/downloads/ui/DownloadActivity;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mDownloadingListView:Lflyme/support/v7/widget/MzRecyclerView;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/providers/downloads/ui/DownloadActivity;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/providers/downloads/ui/DownloadActivity;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mDownloadingView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/providers/downloads/ui/DownloadActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/providers/downloads/ui/DownloadActivity;

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mDownloadedEmptyShow:Z

    return v0
.end method

.method static synthetic access$3302(Lcom/android/providers/downloads/ui/DownloadActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/providers/downloads/ui/DownloadActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 113
    iput-boolean p1, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mDownloadedEmptyShow:Z

    return p1
.end method

.method static synthetic access$3400(Lcom/android/providers/downloads/ui/DownloadActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/providers/downloads/ui/DownloadActivity;

    .prologue
    .line 113
    iget v0, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mNumberOfComplete:I

    return v0
.end method

.method static synthetic access$3500(Lcom/android/providers/downloads/ui/DownloadActivity;)Lflyme/support/v7/widget/MzRecyclerView;
    .locals 1
    .param p0, "x0"    # Lcom/android/providers/downloads/ui/DownloadActivity;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mDownloadedListView:Lflyme/support/v7/widget/MzRecyclerView;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/providers/downloads/ui/DownloadActivity;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/providers/downloads/ui/DownloadActivity;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mDownloadedView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/providers/downloads/ui/DownloadActivity;)Lcom/android/providers/downloads/ui/DownloadedRecyclerAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/providers/downloads/ui/DownloadActivity;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mDownloadedAdapter:Lcom/android/providers/downloads/ui/DownloadedRecyclerAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/providers/downloads/ui/DownloadActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/providers/downloads/ui/DownloadActivity;

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mFlag_First:Z

    return v0
.end method

.method static synthetic access$4000(Lcom/android/providers/downloads/ui/DownloadActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/providers/downloads/ui/DownloadActivity;

    .prologue
    .line 113
    iget v0, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mPaddingLeft:I

    return v0
.end method

.method static synthetic access$4100(Lcom/android/providers/downloads/ui/DownloadActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/providers/downloads/ui/DownloadActivity;

    .prologue
    .line 113
    iget v0, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mPaddingTop:I

    return v0
.end method

.method static synthetic access$4200(Lcom/android/providers/downloads/ui/DownloadActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/providers/downloads/ui/DownloadActivity;

    .prologue
    .line 113
    iget v0, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mPaddingRight:I

    return v0
.end method

.method static synthetic access$4300(Lcom/android/providers/downloads/ui/DownloadActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/providers/downloads/ui/DownloadActivity;

    .prologue
    .line 113
    iget v0, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mPaddingBottom:I

    return v0
.end method

.method static synthetic access$4400(Lcom/android/providers/downloads/ui/DownloadActivity;Lflyme/support/v7/widget/MzRecyclerView;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/android/providers/downloads/ui/DownloadActivity;
    .param p1, "x1"    # Lflyme/support/v7/widget/MzRecyclerView;

    .prologue
    .line 113
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/ui/DownloadActivity;->getCheckedItemIdSet(Lflyme/support/v7/widget/MzRecyclerView;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4500(Lcom/android/providers/downloads/ui/DownloadActivity;Lflyme/support/v7/widget/MzRecyclerView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/providers/downloads/ui/DownloadActivity;
    .param p1, "x1"    # Lflyme/support/v7/widget/MzRecyclerView;
    .param p2, "x2"    # Z

    .prologue
    .line 113
    invoke-direct {p0, p1, p2}, Lcom/android/providers/downloads/ui/DownloadActivity;->deleteCheckedItems(Lflyme/support/v7/widget/MzRecyclerView;Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/providers/downloads/ui/DownloadActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/providers/downloads/ui/DownloadActivity;

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadActivity;->initView()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/providers/downloads/ui/DownloadActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/providers/downloads/ui/DownloadActivity;

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadActivity;->initDownloadManager()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/providers/downloads/ui/DownloadActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/providers/downloads/ui/DownloadActivity;

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadActivity;->dismissSlideNotice()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/providers/downloads/ui/DownloadActivity;)Landroid/database/Cursor;
    .locals 1
    .param p0, "x0"    # Lcom/android/providers/downloads/ui/DownloadActivity;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mDownloadCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/providers/downloads/ui/DownloadActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .param p0, "x0"    # Lcom/android/providers/downloads/ui/DownloadActivity;
    .param p1, "x1"    # Landroid/database/Cursor;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mDownloadCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/providers/downloads/ui/DownloadActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/providers/downloads/ui/DownloadActivity;

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadActivity;->setPage()V

    return-void
.end method

.method private checkDownloadPermission()V
    .locals 1

    .prologue
    .line 303
    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/DownloadActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/downloads/ui/PermissionHelper;->isPermissionOk(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 304
    invoke-static {p0}, Lcom/android/providers/downloads/ui/DialogHelper;->showPermissionDialog(Landroid/app/Activity;)V

    .line 306
    :cond_0
    return-void
.end method

.method public static createActionbarBg(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 381
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    const v3, 0x7f0a0005

    invoke-virtual {p0, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const v3, 0x7f0202ba

    invoke-virtual {p0, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 386
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    return-object v0
.end method

.method private delFromeDiskIfCompeled(Landroid/database/Cursor;J)V
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "itemId"    # J

    .prologue
    .line 1790
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1791
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1792
    const-string v1, "_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 1793
    .local v2, "id":J
    cmp-long v1, p2, v2

    if-nez v1, :cond_1

    .line 1794
    const-string v1, "_data"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1795
    .local v0, "fullpath":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/providers/downloads/ui/DownloadActivity;->deleteFileIfExists(Ljava/lang/String;)V

    .line 1801
    .end local v0    # "fullpath":Ljava/lang/String;
    .end local v2    # "id":J
    :cond_0
    return-void

    .line 1798
    .restart local v2    # "id":J
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0
.end method

.method private deleteCheckedItems(Lflyme/support/v7/widget/MzRecyclerView;Z)V
    .locals 7
    .param p1, "listView"    # Lflyme/support/v7/widget/MzRecyclerView;
    .param p2, "delFromDisk"    # Z

    .prologue
    .line 1744
    move v2, p2

    .line 1745
    .local v2, "delFromDiskFlag":Z
    invoke-virtual {p1}, Lflyme/support/v7/widget/MzRecyclerView;->getCheckedItemIds()[J

    move-result-object v3

    .line 1746
    .local v3, "ids":[J
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mCompleteIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 1747
    .local v5, "mCompleteIdsClone":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mUnCompleteIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 1748
    .local v4, "mIdsClone":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1749
    array-length v0, v3

    if-lez v0, :cond_0

    .line 1750
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/android/providers/downloads/ui/DownloadActivity$19;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/providers/downloads/ui/DownloadActivity$19;-><init>(Lcom/android/providers/downloads/ui/DownloadActivity;Z[JLjava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 1787
    :cond_0
    return-void
.end method

.method private deleteComleteDownloads()V
    .locals 3

    .prologue
    .line 1715
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mCompleteIds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1717
    .local v0, "mCompleteIdsClone":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1718
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/providers/downloads/ui/DownloadActivity$18;

    invoke-direct {v2, p0, v0}, Lcom/android/providers/downloads/ui/DownloadActivity$18;-><init>(Lcom/android/providers/downloads/ui/DownloadActivity;Ljava/util/ArrayList;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 1741
    :cond_0
    return-void
.end method

.method private deleteFileIfExists(Ljava/lang/String;)V
    .locals 5
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 1805
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1806
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1807
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1812
    .end local v1    # "file":Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 1809
    :catch_0
    move-exception v0

    .line 1810
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "DownloadActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' couldn\'t be deleted"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private deleteItemById(J)V
    .locals 5
    .param p1, "id"    # J

    .prologue
    .line 455
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mDownloadCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mDownloadCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-gez v2, :cond_1

    .line 468
    :cond_0
    :goto_0
    return-void

    .line 456
    :cond_1
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mIdPositions:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 457
    .local v0, "pos":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 459
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mDownloadCursor:Landroid/database/Cursor;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 460
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mDownloadCursor:Landroid/database/Cursor;

    iget-object v3, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mDownloadCursor:Landroid/database/Cursor;

    const-string v4, "status"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 461
    .local v1, "status":I
    const/16 v2, 0x8

    if-ne v1, v2, :cond_2

    .line 462
    const-string v2, "DownloadActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteItemById STATUS_SUCCESSFUL error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 464
    :cond_2
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mIdPositions:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mUnCompleteIds:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 466
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mDownloadManager:Landroid/app/DownloadManager;

    const/4 v3, 0x1

    new-array v3, v3, [J

    const/4 v4, 0x0

    aput-wide p1, v3, v4

    invoke-virtual {v2, v3}, Landroid/app/DownloadManager;->remove([J)I

    goto :goto_0
.end method

.method private dismissSlideNotice()V
    .locals 1

    .prologue
    .line 1624
    iget-boolean v0, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->isSlideNoticeShow:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mNetWorkSlideNotice:Lcom/meizu/common/app/SlideNotice;

    if-eqz v0, :cond_0

    .line 1625
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mNetWorkSlideNotice:Lcom/meizu/common/app/SlideNotice;

    invoke-virtual {v0}, Lcom/meizu/common/app/SlideNotice;->slideToCancel()V

    .line 1626
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mNetWorkSlideNotice:Lcom/meizu/common/app/SlideNotice;

    .line 1628
    :cond_0
    return-void
.end method

.method private static encodePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/16 v10, 0x7c

    const/16 v9, 0x5d

    const/16 v8, 0x5b

    .line 1339
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 1341
    .local v2, "chars":[C
    const/4 v5, 0x0

    .line 1342
    .local v5, "needed":Z
    move-object v0, v2

    .local v0, "arr$":[C
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-char v1, v0, v3

    .line 1343
    .local v1, "c":C
    if-eq v1, v8, :cond_0

    if-eq v1, v9, :cond_0

    if-ne v1, v10, :cond_2

    .line 1344
    :cond_0
    const/4 v5, 0x1

    .line 1348
    .end local v1    # "c":C
    :cond_1
    if-nez v5, :cond_3

    .line 1362
    .end local p0    # "path":Ljava/lang/String;
    :goto_1
    return-object p0

    .line 1342
    .restart local v1    # "c":C
    .restart local p0    # "path":Ljava/lang/String;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1352
    .end local v1    # "c":C
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, ""

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1353
    .local v6, "sb":Ljava/lang/StringBuilder;
    move-object v0, v2

    array-length v4, v0

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v4, :cond_6

    aget-char v1, v0, v3

    .line 1354
    .restart local v1    # "c":C
    if-eq v1, v8, :cond_4

    if-eq v1, v9, :cond_4

    if-ne v1, v10, :cond_5

    .line 1355
    :cond_4
    const/16 v7, 0x25

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1356
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1353
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1358
    :cond_5
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 1362
    .end local v1    # "c":C
    :cond_6
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1
.end method

.method private fixUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "inUrl"    # Ljava/lang/String;

    .prologue
    .line 1369
    const/16 v5, 0x3a

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 1370
    .local v2, "colon":I
    const/4 v0, 0x1

    .line 1371
    .local v0, "allLower":Z
    const/4 v4, 0x0

    .local v4, "index":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 1372
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1373
    .local v1, "ch":C
    invoke-static {v1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1381
    .end local v1    # "ch":C
    :cond_0
    const-string v5, "http://"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "https://"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_1
    move-object v3, p1

    .line 1389
    .end local p1    # "inUrl":Ljava/lang/String;
    .local v3, "inUrl":Ljava/lang/String;
    :goto_1
    return-object v3

    .line 1376
    .end local v3    # "inUrl":Ljava/lang/String;
    .restart local v1    # "ch":C
    .restart local p1    # "inUrl":Ljava/lang/String;
    :cond_2
    invoke-static {v1}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v5

    and-int/2addr v0, v5

    .line 1377
    add-int/lit8 v5, v2, -0x1

    if-ne v4, v5, :cond_3

    if-nez v0, :cond_3

    .line 1378
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    invoke-virtual {p1, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1371
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1383
    .end local v1    # "ch":C
    :cond_4
    const-string v5, "http:"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "https:"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1384
    :cond_5
    const-string v5, "http:/"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "https:/"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1385
    :cond_6
    const-string v5, "/"

    const-string v6, "//"

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_7
    :goto_2
    move-object v3, p1

    .line 1389
    .end local p1    # "inUrl":Ljava/lang/String;
    .restart local v3    # "inUrl":Ljava/lang/String;
    goto :goto_1

    .line 1387
    .end local v3    # "inUrl":Ljava/lang/String;
    .restart local p1    # "inUrl":Ljava/lang/String;
    :cond_8
    const-string v5, ":"

    const-string v6, "://"

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2
.end method

.method private getActionBarHeight()I
    .locals 5

    .prologue
    .line 430
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 431
    .local v1, "tv":Landroid/util/TypedValue;
    const/4 v0, 0x0

    .line 432
    .local v0, "actionBarHeight":I
    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/DownloadActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x10102eb

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 433
    iget v2, v1, Landroid/util/TypedValue;->data:I

    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/DownloadActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v0

    .line 436
    :cond_0
    return v0
.end method

.method private getCheckedItemIdSet(Lflyme/support/v7/widget/MzRecyclerView;)Ljava/util/Set;
    .locals 8
    .param p1, "listView"    # Lflyme/support/v7/widget/MzRecyclerView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lflyme/support/v7/widget/MzRecyclerView;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1881
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 1882
    .local v3, "idSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    invoke-virtual {p1}, Lflyme/support/v7/widget/MzRecyclerView;->getCheckedItemIds()[J

    move-result-object v0

    .local v0, "arr$":[J
    array-length v4, v0

    .local v4, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v4, :cond_0

    aget-wide v6, v0, v1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 1883
    .local v2, "id":Ljava/lang/Long;
    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1882
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1885
    .end local v2    # "id":Ljava/lang/Long;
    :cond_0
    return-object v3
.end method

.method private getStatusBarHeight()I
    .locals 2

    .prologue
    .line 440
    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/DownloadActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    return v0
.end method

.method private getTitle(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 1840
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    .line 1841
    :cond_0
    const-string p1, ""

    .line 1877
    .end local p1    # "title":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object p1

    .line 1845
    .restart local p1    # "title":Ljava/lang/String;
    :cond_2
    const/16 v4, 0x2e

    invoke-virtual {p1, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 1846
    .local v3, "lastIndex":I
    if-lez v3, :cond_1

    .line 1847
    const/4 v4, 0x0

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1848
    .local v2, "filename":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1854
    .local v1, "extension":Ljava/lang/String;
    :try_start_0
    const-string v0, "ISO-8859-1"

    .line 1855
    .local v0, "encode":Ljava/lang/String;
    if-eqz v2, :cond_3

    new-instance v4, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-direct {v4, v5, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1856
    invoke-static {v2, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1857
    const-string v4, "GBK"

    invoke-static {v2, v4}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1858
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1861
    :cond_3
    const-string v0, "GBK"

    .line 1862
    if-eqz v2, :cond_4

    new-instance v4, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-direct {v4, v5, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1863
    invoke-static {v2, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1864
    invoke-static {v2, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1865
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1868
    :cond_4
    const-string v0, "GB2312"

    .line 1869
    if-eqz v2, :cond_1

    new-instance v4, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-direct {v4, v5, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1870
    invoke-static {v2, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1871
    invoke-static {v2, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1872
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    goto/16 :goto_0

    .line 1874
    .end local v0    # "encode":Ljava/lang/String;
    :catch_0
    move-exception v4

    goto/16 :goto_0
.end method

.method private hasDownloadPausedOrFailed()Z
    .locals 5

    .prologue
    .line 1123
    const/4 v0, 0x0

    .line 1124
    .local v0, "hasPausedOrFailed":Z
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mDownloadCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mDownloadCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mDownloadCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1126
    :goto_0
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mDownloadCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1127
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mDownloadCursor:Landroid/database/Cursor;

    iget-object v3, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mDownloadCursor:Landroid/database/Cursor;

    const-string v4, "status"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 1129
    .local v1, "status":I
    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    const/16 v2, 0x10

    if-ne v1, v2, :cond_1

    .line 1131
    :cond_0
    const/4 v0, 0x1

    .line 1132
    const/4 v2, 0x1

    .line 1137
    .end local v1    # "status":I
    :goto_1
    return v2

    .line 1134
    .restart local v1    # "status":I
    :cond_1
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mDownloadCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .end local v1    # "status":I
    :cond_2
    move v2, v0

    .line 1137
    goto :goto_1
.end method

.method private hasDownloadRunning()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 1105
    const/4 v0, 0x0

    .line 1106
    .local v0, "hasRunning":Z
    iget-object v3, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mDownloadCursor:Landroid/database/Cursor;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mDownloadCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mDownloadCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1108
    :goto_0
    iget-object v3, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mDownloadCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1109
    iget-object v3, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mDownloadCursor:Landroid/database/Cursor;

    iget-object v4, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mDownloadCursor:Landroid/database/Cursor;

    const-string v5, "status"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 1111
    .local v1, "status":I
    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    if-ne v1, v2, :cond_1

    .line 1113
    :cond_0
    const/4 v0, 0x1

    .line 1119
    .end local v1    # "status":I
    :goto_1
    return v2

    .line 1116
    .restart local v1    # "status":I
    :cond_1
    iget-object v3, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mDownloadCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .end local v1    # "status":I
    :cond_2
    move v2, v0

    .line 1119
    goto :goto_1
.end method

.method private hideDeleteDialog(Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "listId":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const-wide/16 v4, -0x1

    const/4 v0, 0x0

    .line 445
    iget-wide v2, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mDeleteSeletedId:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mDeleteDialog:Landroid/support/v7/app/AlertDialog;

    if-nez v1, :cond_1

    .line 451
    :cond_0
    :goto_0
    return v0

    .line 446
    :cond_1
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mDeleteDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mDeleteSeletedId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 447
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mDeleteDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->dismiss()V

    .line 448
    iput-wide v4, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mDeleteSeletedId:J

    .line 449
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private initActionBar()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 309
    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/DownloadActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 310
    .local v0, "actionBar":Landroid/support/v7/app/ActionBar;
    if-eqz v0, :cond_0

    .line 311
    invoke-static {p0}, Lcom/android/providers/downloads/ui/DownloadActivity;->createActionbarBg(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 313
    invoke-virtual {v0, v3}, Landroid/support/v7/app/ActionBar;->setDisplayShowTabEnabled(Z)V

    .line 314
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 315
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setNavigationMode(I)V

    .line 316
    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->newTab()Landroid/support/v7/app/ActionBar$Tab;

    move-result-object v1

    const v2, 0x7f080048

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar$Tab;->setText(I)Landroid/support/v7/app/ActionBar$Tab;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mTabListener:Landroid/support/v7/app/ActionBar$TabListener;

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar$Tab;->setTabListener(Landroid/support/v7/app/ActionBar$TabListener;)Landroid/support/v7/app/ActionBar$Tab;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->addTab(Landroid/support/v7/app/ActionBar$Tab;)V

    .line 317
    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->newTab()Landroid/support/v7/app/ActionBar$Tab;

    move-result-object v1

    const v2, 0x7f080049

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar$Tab;->setText(I)Landroid/support/v7/app/ActionBar$Tab;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mTabListener:Landroid/support/v7/app/ActionBar$TabListener;

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar$Tab;->setTabListener(Landroid/support/v7/app/ActionBar$TabListener;)Landroid/support/v7/app/ActionBar$Tab;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->addTab(Landroid/support/v7/app/ActionBar$Tab;)V

    .line 318
    invoke-static {}, Lcom/android/providers/downloads/ui/DeviceUtils;->isFlymeRom()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 319
    invoke-virtual {v0, v3}, Landroid/support/v7/app/ActionBar;->setSplitBarFitSystemWindows(Z)V

    .line 322
    :cond_0
    return-void
.end method

.method private initContentView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const v1, 0x7f04001d

    .line 287
    new-instance v0, Landroid/support/v4/view/ViewPager;

    invoke-direct {v0, p0}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mHomepageViewPager:Landroid/support/v4/view/ViewPager;

    .line 288
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mHomepageViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p0, v0}, Lcom/android/providers/downloads/ui/DownloadActivity;->setContentView(Landroid/view/View;)V

    .line 289
    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/DownloadActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mDownloadingView:Landroid/widget/FrameLayout;

    .line 290
    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/DownloadActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mDownloadedView:Landroid/widget/FrameLayout;

    .line 291
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mViewList:Ljava/util/List;

    .line 292
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mViewList:Ljava/util/List;

    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mDownloadingView:Landroid/widget/FrameLayout;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mViewList:Ljava/util/List;

    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mDownloadedView:Landroid/widget/FrameLayout;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 294
    new-instance v0, Lcom/android/providers/downloads/ui/DownloadPagerAdapter;

    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mViewList:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/android/providers/downloads/ui/DownloadPagerAdapter;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mPagerAdapter:Landroid/support/v4/view/PagerAdapter;

    .line 295
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mHomepageViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mPagerAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 296
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mHomepageViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 297
    return-void
.end method

.method private initDownloadManager()V
    .locals 2

    .prologue
    .line 353
    const-string v0, "download"

    invoke-virtual {p0, v0}, Lcom/android/providers/downloads/ui/DownloadActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    iput-object v0, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mDownloadManager:Landroid/app/DownloadManager;

    .line 354
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mDownloadManager:Landroid/app/DownloadManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/DownloadManager;->setAccessAllDownloads(Z)V

    .line 355
    return-void
.end method

.method private initSettingMenu(Landroid/view/Menu;)V
    .locals 10
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 985
    const/4 v1, 0x0

    .line 986
    .local v1, "hasPausedOrFailed":Z
    const/4 v0, 0x0

    .line 987
    .local v0, "hasCompleted":Z
    const/4 v2, 0x0

    .line 989
    .local v2, "hasRunning":Z
    iget-object v5, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mDownloadCursor:Landroid/database/Cursor;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mDownloadCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mDownloadCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 991
    :goto_0
    iget-object v5, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mDownloadCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v5

    if-nez v5, :cond_1

    .line 992
    iget-object v5, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mDownloadCursor:Landroid/database/Cursor;

    iget-object v6, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mDownloadCursor:Landroid/database/Cursor;

    const-string v7, "status"

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 994
    .local v4, "status":I
    const/4 v5, 0x4

    if-eq v4, v5, :cond_0

    const/16 v5, 0x10

    if-ne v4, v5, :cond_2

    .line 996
    :cond_0
    const/4 v1, 0x1

    .line 1002
    :goto_1
    if-eqz v2, :cond_4

    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    .line 1008
    .end local v4    # "status":I
    :cond_1
    const v5, 0x7f0d011e

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 1009
    .local v3, "item":Landroid/view/MenuItem;
    if-eqz v0, :cond_5

    .line 1010
    invoke-interface {v3, v9}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1014
    :goto_2
    const v5, 0x7f0d011d

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 1015
    if-eqz v2, :cond_6

    .line 1016
    invoke-interface {v3, v9}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1020
    :goto_3
    const v5, 0x7f0d011c

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 1021
    if-eqz v1, :cond_7

    .line 1022
    invoke-interface {v3, v9}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1026
    :goto_4
    return-void

    .line 997
    .end local v3    # "item":Landroid/view/MenuItem;
    .restart local v4    # "status":I
    :cond_2
    const/16 v5, 0x8

    if-ne v4, v5, :cond_3

    .line 998
    const/4 v0, 0x1

    goto :goto_1

    .line 1000
    :cond_3
    const/4 v2, 0x1

    goto :goto_1

    .line 1005
    :cond_4
    iget-object v5, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mDownloadCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 1012
    .end local v4    # "status":I
    .restart local v3    # "item":Landroid/view/MenuItem;
    :cond_5
    invoke-interface {v3, v8}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_2

    .line 1018
    :cond_6
    invoke-interface {v3, v8}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_3

    .line 1024
    :cond_7
    invoke-interface {v3, v8}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_4
.end method

.method private initView()V
    .locals 6

    .prologue
    const v5, 0x102000a

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 358
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mDownloadingView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lflyme/support/v7/widget/MzRecyclerView;

    iput-object v1, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mDownloadingListView:Lflyme/support/v7/widget/MzRecyclerView;

    .line 359
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mDownloadingListView:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-virtual {v1, v4}, Lflyme/support/v7/widget/MzRecyclerView;->setHasFixedSize(Z)V

    .line 360
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mDownloadingListView:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-virtual {p0, v4}, Lcom/android/providers/downloads/ui/DownloadActivity;->getLayoutManager(I)Lflyme/support/v7/widget/LinearLayoutManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Lflyme/support/v7/widget/MzRecyclerView;->setLayoutManager(Lflyme/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 361
    new-instance v1, Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter;

    invoke-direct {v1, v3, v3, v3}, Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter;-><init>(Landroid/database/Cursor;Ljava/util/List;Ljava/util/HashMap;)V

    iput-object v1, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mDownloadingAdapter:Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter;

    .line 362
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mDownloadingListView:Lflyme/support/v7/widget/MzRecyclerView;

    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mDownloadingAdapter:Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter;

    invoke-virtual {v1, v2}, Lflyme/support/v7/widget/MzRecyclerView;->setAdapter(Lflyme/support/v7/widget/RecyclerView$Adapter;)V

    .line 363
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mDownloadingListView:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-virtual {v1, v3}, Lflyme/support/v7/widget/MzRecyclerView;->setItemAnimator(Lflyme/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 364
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mDownloadingListView:Lflyme/support/v7/widget/MzRecyclerView;

    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mOnScrollListener:Lflyme/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v1, v2}, Lflyme/support/v7/widget/MzRecyclerView;->setOnScrollListener(Lflyme/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 366
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mDownloadedView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lflyme/support/v7/widget/MzRecyclerView;

    iput-object v1, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mDownloadedListView:Lflyme/support/v7/widget/MzRecyclerView;

    .line 367
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mDownloadedListView:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-virtual {v1, v4}, Lflyme/support/v7/widget/MzRecyclerView;->setHasFixedSize(Z)V

    .line 368
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mDownloadedListView:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-virtual {p0, v4}, Lcom/android/providers/downloads/ui/DownloadActivity;->getLayoutManager(I)Lflyme/support/v7/widget/LinearLayoutManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Lflyme/support/v7/widget/MzRecyclerView;->setLayoutManager(Lflyme/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 369
    new-instance v1, Lcom/android/providers/downloads/ui/DownloadedRecyclerAdapter;

    invoke-direct {v1, v3, v3, v3}, Lcom/android/providers/downloads/ui/DownloadedRecyclerAdapter;-><init>(Landroid/database/Cursor;Ljava/util/List;Ljava/util/HashMap;)V

    iput-object v1, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mDownloadedAdapter:Lcom/android/providers/downloads/ui/DownloadedRecyclerAdapter;

    .line 370
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mDownloadedListView:Lflyme/support/v7/widget/MzRecyclerView;

    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mDownloadedAdapter:Lcom/android/providers/downloads/ui/DownloadedRecyclerAdapter;

    invoke-virtual {v1, v2}, Lflyme/support/v7/widget/MzRecyclerView;->setAdapter(Lflyme/support/v7/widget/RecyclerView$Adapter;)V

    .line 371
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mDownloadedListView:Lflyme/support/v7/widget/MzRecyclerView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lflyme/support/v7/widget/MzRecyclerView;->setChoiceMode(I)V

    .line 372
    new-instance v0, Lcom/android/providers/downloads/ui/DownloadActivity$SelectionModeCallback;

    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mDownloadedListView:Lflyme/support/v7/widget/MzRecyclerView;

    sget-object v2, Lcom/android/providers/downloads/ui/DownloadActivity$ListViewType;->E_Downloaded:Lcom/android/providers/downloads/ui/DownloadActivity$ListViewType;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/providers/downloads/ui/DownloadActivity$SelectionModeCallback;-><init>(Lcom/android/providers/downloads/ui/DownloadActivity;Lflyme/support/v7/widget/MzRecyclerView;Lcom/android/providers/downloads/ui/DownloadActivity$ListViewType;)V

    .line 373
    .local v0, "smcb":Lcom/android/providers/downloads/ui/DownloadActivity$SelectionModeCallback;
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mDownloadedListView:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-virtual {v1, v0}, Lflyme/support/v7/widget/MzRecyclerView;->setMultiChoiceModeListener(Lflyme/support/v7/widget/MzRecyclerView$MultiChoiceModeListener;)V

    .line 374
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mDownloadedListView:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-virtual {v1, v4}, Lflyme/support/v7/widget/MzRecyclerView;->setEnableDragSelection(Z)V

    .line 375
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mDownloadedListView:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-virtual {v1, v3}, Lflyme/support/v7/widget/MzRecyclerView;->setItemAnimator(Lflyme/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 376
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadActivity;->setOnSelectLisenter()V

    .line 377
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadActivity;->setListViewPadding()V

    .line 378
    return-void
.end method

.method private isAppLocalInstall(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 665
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 666
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    invoke-virtual {v1, p2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 667
    .local v0, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    .line 668
    const/4 v2, 0x1

    .line 673
    .end local v0    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    return v2

    .line 670
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private isStatuseComplete(I)Z
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 1555
    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    const/16 v0, 0x10

    if-ne v0, p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportDownloadReplace(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 1539
    const/4 v2, 0x0

    .line 1540
    .local v2, "support":Z
    const/4 v1, 0x0

    .line 1542
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    sget-object v5, Lcom/android/providers/downloads/Constants;->BROWSER_PAKG:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 1543
    if-eqz v1, :cond_0

    .line 1544
    iget v4, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    sget v5, Lcom/android/providers/downloads/Constants;->BROWSER_PAKG_VERSION_CODE:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-lt v4, v5, :cond_0

    .line 1545
    const/4 v2, 0x1

    .line 1551
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    sget-boolean v4, Lcom/android/providers/downloads/Constants;->ENABLE_INNNER_REPLACE:Z

    if-eqz v4, :cond_1

    const/4 v3, 0x1

    :cond_1
    return v3

    .line 1548
    :catch_0
    move-exception v0

    .line 1549
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private isUrl(Ljava/lang/String;)Z
    .locals 2
    .param p1, "inUrl"    # Ljava/lang/String;

    .prologue
    .line 1393
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/ui/DownloadActivity;->fixUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1394
    .local v0, "url":Ljava/lang/String;
    sget-object v1, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/providers/downloads/ui/DownloadActivity;->ACCEPTED_URI_SCHEMA:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1395
    :cond_0
    const/4 v1, 0x1

    .line 1397
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private matchUpdateBinFile(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "filePath"    # Ljava/lang/String;

    .prologue
    .line 653
    const/16 v2, 0x2f

    invoke-virtual {p2, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 654
    .local v1, "lastIndex":I
    if-lez v1, :cond_1

    .line 655
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 656
    .local v0, "filename":Ljava/lang/String;
    const-string v2, "update.zip"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "update.bin"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 657
    :cond_0
    const/4 v2, 0x1

    .line 660
    .end local v0    # "filename":Ljava/lang/String;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private newTextWatcher(Landroid/support/v7/app/AlertDialog;Landroid/view/View;)Landroid/text/TextWatcher;
    .locals 3
    .param p1, "alert"    # Landroid/support/v7/app/AlertDialog;
    .param p2, "txt"    # Landroid/view/View;

    .prologue
    .line 1207
    move-object v0, p1

    .line 1208
    .local v0, "alertDialog":Landroid/support/v7/app/AlertDialog;
    move-object v1, p2

    .line 1209
    .local v1, "hints":Landroid/view/View;
    new-instance v2, Lcom/android/providers/downloads/ui/DownloadActivity$12;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/providers/downloads/ui/DownloadActivity$12;-><init>(Lcom/android/providers/downloads/ui/DownloadActivity;Landroid/support/v7/app/AlertDialog;Landroid/view/View;)V

    .line 1240
    .local v2, "tw":Landroid/text/TextWatcher;
    return-object v2
.end method

.method private onlyNewBrowserDownload(Landroid/database/Cursor;)Z
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 1558
    invoke-static {p0}, Lcom/android/providers/downloads/ui/DownloadActivity;->isSupportDownloadReplace(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1559
    const/4 v1, 0x0

    .line 1574
    :cond_0
    :goto_0
    return v1

    .line 1561
    :cond_1
    const/4 v1, 0x1

    .line 1562
    .local v1, "ret":Z
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1563
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1564
    const-string v3, "notificationpackage"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1566
    .local v0, "pkg":Ljava/lang/String;
    const-string v3, "status"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 1567
    .local v2, "status":I
    if-eqz v0, :cond_2

    sget-object v3, Lcom/android/providers/downloads/Constants;->BROWSER_PAKG:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-direct {p0, v2}, Lcom/android/providers/downloads/ui/DownloadActivity;->isStatuseComplete(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1568
    const/4 v1, 0x0

    .line 1569
    goto :goto_0

    .line 1571
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1
.end method

.method private pauseAllRunningDownloads()V
    .locals 8

    .prologue
    .line 1038
    iget-object v4, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mDownloadCursor:Landroid/database/Cursor;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mDownloadCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mDownloadCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1040
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1041
    .local v3, "where":Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .line 1042
    .local v0, "firstTime":Z
    :goto_0
    iget-object v4, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mDownloadCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1043
    iget-object v4, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mDownloadCursor:Landroid/database/Cursor;

    iget-object v5, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mDownloadCursor:Landroid/database/Cursor;

    const-string v6, "status"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 1045
    .local v1, "status":I
    const/4 v4, 0x2

    if-eq v1, v4, :cond_0

    const/4 v4, 0x1

    if-eq v1, v4, :cond_0

    const/4 v4, 0x4

    if-ne v1, v4, :cond_1

    .line 1048
    :cond_0
    if-eqz v0, :cond_2

    .line 1049
    const/4 v0, 0x0

    .line 1053
    :goto_1
    const-string v4, "( "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1054
    const-string v4, "_id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1055
    const-string v4, " = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1056
    iget-object v4, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mDownloadCursor:Landroid/database/Cursor;

    iget-object v5, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mDownloadCursor:Landroid/database/Cursor;

    const-string v6, "_id"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1058
    const-string v4, "\' )"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1060
    :cond_1
    iget-object v4, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mDownloadCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 1051
    :cond_2
    const-string v4, " OR "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1062
    .end local v1    # "status":I
    :cond_3
    if-nez v0, :cond_4

    .line 1063
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1064
    .local v2, "values":Landroid/content/ContentValues;
    const-string v4, "status"

    const/16 v5, 0xc1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1066
    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/DownloadActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v2, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1070
    .end local v0    # "firstTime":Z
    .end local v2    # "values":Landroid/content/ContentValues;
    .end local v3    # "where":Ljava/lang/StringBuilder;
    :cond_4
    return-void
.end method

.method private registerReceiver()V
    .locals 4

    .prologue
    .line 814
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 815
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 817
    :try_start_0
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mDownloadReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/android/providers/downloads/ui/DownloadActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 821
    :goto_0
    return-void

    .line 818
    :catch_0
    move-exception v0

    .line 819
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "DownloadActivity"

    const-string v3, "registerReceiver failed!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private requestData()V
    .locals 4

    .prologue
    .line 349
    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/DownloadActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->LOADER_CALLBACKS:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 350
    return-void
.end method

.method private setDialogDismissable(Landroid/support/v7/app/AlertDialog;Z)V
    .locals 3
    .param p1, "dialog"    # Landroid/support/v7/app/AlertDialog;
    .param p2, "could"    # Z

    .prologue
    .line 1328
    :try_start_0
    sget-object v1, Lcom/android/providers/downloads/ui/DownloadActivity;->sDialogField:Ljava/lang/reflect/Field;

    if-nez v1, :cond_0

    .line 1329
    const-string v1, "android.app.Dialog"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "mShowing"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Lcom/android/providers/downloads/ui/DownloadActivity;->sDialogField:Ljava/lang/reflect/Field;

    .line 1330
    sget-object v1, Lcom/android/providers/downloads/ui/DownloadActivity;->sDialogField:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1332
    :cond_0
    sget-object v1, Lcom/android/providers/downloads/ui/DownloadActivity;->sDialogField:Ljava/lang/reflect/Field;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1336
    :goto_0
    return-void

    .line 1333
    :catch_0
    move-exception v0

    .line 1334
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private setListViewPadding()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 410
    new-instance v0, Lflyme/support/v7/widget/MzItemDecoration;

    invoke-direct {v0, p0}, Lflyme/support/v7/widget/MzItemDecoration;-><init>(Landroid/content/Context;)V

    .line 411
    .local v0, "itemDec":Lflyme/support/v7/widget/MzItemDecoration;
    new-instance v1, Lcom/android/providers/downloads/ui/DownloadActivity$7;

    invoke-direct {v1, p0}, Lcom/android/providers/downloads/ui/DownloadActivity$7;-><init>(Lcom/android/providers/downloads/ui/DownloadActivity;)V

    invoke-virtual {v0, v1}, Lflyme/support/v7/widget/MzItemDecoration;->setDividerPadding(Lflyme/support/v7/widget/MzItemDecoration$DividerPadding;)V

    .line 419
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mDownloadingListView:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-virtual {v1, v0}, Lflyme/support/v7/widget/MzRecyclerView;->addItemDecoration(Lflyme/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 420
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mDownloadedListView:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-virtual {v1, v0}, Lflyme/support/v7/widget/MzRecyclerView;->addItemDecoration(Lflyme/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 421
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mDownloadingListView:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-virtual {v1}, Lflyme/support/v7/widget/MzRecyclerView;->getPaddingLeft()I

    move-result v1

    iput v1, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mPaddingLeft:I

    .line 422
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mDownloadingListView:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-virtual {v1}, Lflyme/support/v7/widget/MzRecyclerView;->getPaddingRight()I

    move-result v1

    iput v1, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mPaddingRight:I

    .line 423
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadActivity;->getActionBarHeight()I

    move-result v1

    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadActivity;->getStatusBarHeight()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mPaddingTop:I

    .line 425
    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/DownloadActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b001a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mPaddingBottom:I

    .line 426
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mDownloadingListView:Lflyme/support/v7/widget/MzRecyclerView;

    iget v2, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mPaddingLeft:I

    iget v3, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mPaddingTop:I

    iget v4, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mPaddingRight:I

    invoke-virtual {v1, v2, v3, v4, v5}, Lflyme/support/v7/widget/MzRecyclerView;->setPadding(IIII)V

    .line 427
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mDownloadedListView:Lflyme/support/v7/widget/MzRecyclerView;

    iget v2, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mPaddingLeft:I

    iget v3, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mPaddingTop:I

    iget v4, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mPaddingRight:I

    invoke-virtual {v1, v2, v3, v4, v5}, Lflyme/support/v7/widget/MzRecyclerView;->setPadding(IIII)V

    .line 428
    return-void
.end method

.method private setOnSelectLisenter()V
    .locals 2

    .prologue
    .line 499
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mDownloadingListView:Lflyme/support/v7/widget/MzRecyclerView;

    new-instance v1, Lcom/android/providers/downloads/ui/DownloadActivity$10;

    invoke-direct {v1, p0}, Lcom/android/providers/downloads/ui/DownloadActivity$10;-><init>(Lcom/android/providers/downloads/ui/DownloadActivity;)V

    invoke-virtual {v0, v1}, Lflyme/support/v7/widget/MzRecyclerView;->setOnItemLongClickListener(Lflyme/support/v7/widget/MzRecyclerView$OnItemLongClickListener;)V

    .line 513
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mDownloadedListView:Lflyme/support/v7/widget/MzRecyclerView;

    new-instance v1, Lcom/android/providers/downloads/ui/DownloadActivity$11;

    invoke-direct {v1, p0}, Lcom/android/providers/downloads/ui/DownloadActivity$11;-><init>(Lcom/android/providers/downloads/ui/DownloadActivity;)V

    invoke-virtual {v0, v1}, Lflyme/support/v7/widget/MzRecyclerView;->setOnItemClickListener(Lflyme/support/v7/widget/MzRecyclerView$OnItemClickListener;)V

    .line 650
    return-void
.end method

.method private setPage()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 691
    iget-boolean v0, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mFlag_First:Z

    if-eqz v0, :cond_1

    .line 692
    iget v0, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mNumberOfUnComplete:I

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mNumberOfComplete:I

    if-nez v0, :cond_2

    .line 693
    :cond_0
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mHomepageViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v2, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 697
    :goto_0
    iput-boolean v2, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mFlag_First:Z

    .line 699
    :cond_1
    return-void

    .line 695
    :cond_2
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mHomepageViewPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    goto :goto_0
.end method

.method private shouldToastBrowser(Landroid/database/Cursor;)Z
    .locals 7
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 1578
    const/4 v4, 0x0

    .line 1579
    .local v4, "toast":Z
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1580
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1581
    const-string v6, "status"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 1582
    .local v3, "status":I
    invoke-direct {p0, v3}, Lcom/android/providers/downloads/ui/DownloadActivity;->isStatuseComplete(I)Z

    move-result v6

    if-nez v6, :cond_2

    .line 1583
    const-string v6, "allowed_network_types"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 1585
    .local v0, "allowType":I
    const-string v6, "connectivity"

    invoke-virtual {p0, v6}, Lcom/android/providers/downloads/ui/DownloadActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 1587
    .local v1, "connectivity":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 1588
    .local v2, "info":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-nez v6, :cond_1

    .line 1601
    .end local v0    # "allowType":I
    .end local v1    # "connectivity":Landroid/net/ConnectivityManager;
    .end local v2    # "info":Landroid/net/NetworkInfo;
    .end local v3    # "status":I
    :cond_0
    :goto_1
    return v4

    .line 1592
    .restart local v0    # "allowType":I
    .restart local v1    # "connectivity":Landroid/net/ConnectivityManager;
    .restart local v2    # "info":Landroid/net/NetworkInfo;
    .restart local v3    # "status":I
    :cond_1
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    invoke-static {v6}, Lcom/android/providers/downloads/ui/NetworkUtils;->translateNetworkTypeToApiFlag(I)I

    move-result v5

    .line 1593
    .local v5, "translateType":I
    if-ge v5, v0, :cond_2

    const/4 v6, 0x2

    if-gt v0, v6, :cond_2

    .line 1594
    const/4 v4, 0x1

    .line 1595
    goto :goto_1

    .line 1598
    .end local v0    # "allowType":I
    .end local v1    # "connectivity":Landroid/net/ConnectivityManager;
    .end local v2    # "info":Landroid/net/NetworkInfo;
    .end local v5    # "translateType":I
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0
.end method

.method private showDeleteDialog(JLjava/lang/String;)V
    .locals 7
    .param p1, "id"    # J
    .param p3, "title"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 471
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    const v1, 0x7f0c0154

    invoke-direct {v0, p0, v1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 472
    .local v0, "dlg":Landroid/support/v7/app/AlertDialog$Builder;
    new-array v1, v3, [Ljava/lang/String;

    const v2, 0x7f080057

    invoke-virtual {p0, v2}, Lcom/android/providers/downloads/ui/DownloadActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    const/high16 v2, 0x1040000

    invoke-virtual {p0, v2}, Lcom/android/providers/downloads/ui/DownloadActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    new-instance v2, Lcom/android/providers/downloads/ui/DownloadActivity$8;

    invoke-direct {v2, p0}, Lcom/android/providers/downloads/ui/DownloadActivity$8;-><init>(Lcom/android/providers/downloads/ui/DownloadActivity;)V

    new-array v3, v3, [Landroid/content/res/ColorStateList;

    const v4, -0xab51aa

    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    aput-object v4, v3, v6

    const v4, -0xd8ebff

    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v2, v5, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Z[Landroid/content/res/ColorStateList;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 486
    new-instance v1, Lcom/android/providers/downloads/ui/DownloadActivity$9;

    invoke-direct {v1, p0}, Lcom/android/providers/downloads/ui/DownloadActivity$9;-><init>(Lcom/android/providers/downloads/ui/DownloadActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 493
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mDeleteDialog:Landroid/support/v7/app/AlertDialog;

    .line 494
    iput-wide p1, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mDeleteSeletedId:J

    .line 495
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mDeleteDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 496
    return-void
.end method

.method private showNetWorkUnavailable()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1631
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mNetWorkSlideNotice:Lcom/meizu/common/app/SlideNotice;

    if-eqz v1, :cond_0

    .line 1646
    :goto_0
    return-void

    .line 1633
    :cond_0
    new-instance v1, Lcom/meizu/common/app/SlideNotice;

    invoke-direct {v1, p0}, Lcom/meizu/common/app/SlideNotice;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mNetWorkSlideNotice:Lcom/meizu/common/app/SlideNotice;

    .line 1634
    new-instance v0, Lcom/meizu/common/widget/ContentToastLayout;

    invoke-direct {v0, p0}, Lcom/meizu/common/widget/ContentToastLayout;-><init>(Landroid/content/Context;)V

    .line 1635
    .local v0, "toastLayout":Lcom/meizu/common/widget/ContentToastLayout;
    invoke-virtual {v0, v3}, Lcom/meizu/common/widget/ContentToastLayout;->setToastType(I)V

    .line 1636
    const v1, 0x7f08005d

    invoke-virtual {p0, v1}, Lcom/android/providers/downloads/ui/DownloadActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/ContentToastLayout;->setText(Ljava/lang/String;)V

    .line 1637
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mNetWorkSlideNotice:Lcom/meizu/common/app/SlideNotice;

    invoke-virtual {v1, v0}, Lcom/meizu/common/app/SlideNotice;->setCustomView(Landroid/view/View;)V

    .line 1638
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mNetWorkSlideNotice:Lcom/meizu/common/app/SlideNotice;

    invoke-virtual {v1, v3}, Lcom/meizu/common/app/SlideNotice;->setBelowDefaultActionBar(Z)V

    .line 1639
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mNetWorkSlideNotice:Lcom/meizu/common/app/SlideNotice;

    new-instance v2, Lcom/android/providers/downloads/ui/DownloadActivity$17;

    invoke-direct {v2, p0}, Lcom/android/providers/downloads/ui/DownloadActivity$17;-><init>(Lcom/android/providers/downloads/ui/DownloadActivity;)V

    invoke-virtual {v1, v2}, Lcom/meizu/common/app/SlideNotice;->setOnClickNoticeListener(Lcom/meizu/common/app/SlideNotice$OnClickNoticeListener;)V

    .line 1645
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mNetWorkSlideNotice:Lcom/meizu/common/app/SlideNotice;

    invoke-virtual {v1, v3}, Lcom/meizu/common/app/SlideNotice;->slideToShow(Z)V

    goto :goto_0
.end method

.method private startAllPauseDownloads()V
    .locals 8

    .prologue
    .line 1073
    iget-object v4, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mDownloadCursor:Landroid/database/Cursor;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mDownloadCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mDownloadCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1074
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1075
    .local v3, "where":Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .line 1076
    .local v0, "firstTime":Z
    :goto_0
    iget-object v4, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mDownloadCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1077
    iget-object v4, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mDownloadCursor:Landroid/database/Cursor;

    iget-object v5, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mDownloadCursor:Landroid/database/Cursor;

    const-string v6, "status"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 1079
    .local v1, "status":I
    const/4 v4, 0x4

    if-eq v1, v4, :cond_0

    const/16 v4, 0x10

    if-ne v1, v4, :cond_1

    .line 1081
    :cond_0
    if-eqz v0, :cond_2

    .line 1082
    const/4 v0, 0x0

    .line 1086
    :goto_1
    const-string v4, "( "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1087
    const-string v4, "_id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1088
    const-string v4, " = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1089
    iget-object v4, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mDownloadCursor:Landroid/database/Cursor;

    iget-object v5, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mDownloadCursor:Landroid/database/Cursor;

    const-string v6, "_id"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1091
    const-string v4, "\' )"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1093
    :cond_1
    iget-object v4, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mDownloadCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 1084
    :cond_2
    const-string v4, " OR "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1095
    .end local v1    # "status":I
    :cond_3
    if-nez v0, :cond_4

    .line 1096
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1097
    .local v2, "values":Landroid/content/ContentValues;
    const-string v4, "status"

    const/16 v5, 0xbe

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1098
    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/DownloadActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v2, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1102
    .end local v0    # "firstTime":Z
    .end local v2    # "values":Landroid/content/ContentValues;
    .end local v3    # "where":Ljava/lang/StringBuilder;
    :cond_4
    return-void
.end method

.method private unregisterReceiver()V
    .locals 3

    .prologue
    .line 828
    :try_start_0
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mDownloadReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/providers/downloads/ui/DownloadActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 832
    :goto_0
    return-void

    .line 829
    :catch_0
    move-exception v0

    .line 830
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "DownloadActivity"

    const-string v2, "unregisterReceiver failed!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateStatus(JI)V
    .locals 7
    .param p1, "id"    # J
    .param p3, "status"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1649
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-ltz v2, :cond_0

    if-gez p3, :cond_1

    .line 1670
    :cond_0
    :goto_0
    return-void

    .line 1651
    :cond_1
    sget-object v2, Landroid/provider/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 1652
    .local v0, "uri":Landroid/net/Uri;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1653
    .local v1, "values":Landroid/content/ContentValues;
    const/4 v2, 0x2

    if-eq p3, v2, :cond_2

    if-ne p3, v4, :cond_3

    .line 1655
    :cond_2
    const-string v2, "status"

    const/16 v3, 0xc1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1669
    :goto_1
    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/DownloadActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0, v1, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 1657
    :cond_3
    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/DownloadActivity;->toastWlan()V

    .line 1658
    const/16 v2, 0x8

    if-ne p3, v2, :cond_5

    .line 1659
    const-string v2, "scanned"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1660
    const-string v2, "current_bytes"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1661
    const-string v2, "visibility"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1667
    :cond_4
    :goto_2
    const-string v2, "status"

    const/16 v3, 0xbe

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    .line 1663
    :cond_5
    const/16 v2, 0x10

    if-ne p3, v2, :cond_4

    .line 1664
    const-string v2, "visibility"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_2
.end method


# virtual methods
.method public buildMap(Landroid/database/Cursor;)V
    .locals 12
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v11, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 868
    iget v1, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mNumberOfComplete:I

    .line 869
    .local v1, "savedCompleteNum":I
    iget v4, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mNumberOfUnComplete:I

    .line 870
    .local v4, "savedUnCompleteNum":I
    iput v7, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mNumberOfComplete:I

    .line 871
    iput v7, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mNumberOfUnComplete:I

    .line 872
    iget-object v8, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mCompleteIds:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 873
    iget-object v8, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mUnCompleteIds:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 874
    iget-object v8, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mIdPositions:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->clear()V

    .line 875
    const/4 v0, 0x0

    .line 878
    .local v0, "hasRunning":Z
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v8

    if-lez v8, :cond_3

    .line 879
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v8

    if-nez v8, :cond_3

    .line 880
    const-string v8, "_id"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 882
    .local v2, "id":J
    const-string v8, "status"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 884
    .local v5, "status":I
    const/16 v8, 0x8

    if-ne v8, v5, :cond_1

    .line 885
    iget v8, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mNumberOfComplete:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mNumberOfComplete:I

    .line 886
    iget-object v8, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mCompleteIds:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 895
    :cond_0
    :goto_1
    iget-object v8, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mIdPositions:Ljava/util/HashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 896
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 888
    :cond_1
    iget v8, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mNumberOfUnComplete:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mNumberOfUnComplete:I

    .line 889
    iget-object v8, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mUnCompleteIds:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 890
    if-nez v0, :cond_0

    if-eq v6, v5, :cond_2

    const/4 v8, 0x2

    if-ne v8, v5, :cond_0

    .line 892
    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    .line 899
    .end local v2    # "id":J
    .end local v5    # "status":I
    :cond_3
    iget-boolean v8, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mBusy:Z

    if-nez v8, :cond_8

    iget-object v8, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mHomepageViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v8}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v8

    if-eqz v8, :cond_4

    iget v8, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mNumberOfUnComplete:I

    if-eq v4, v8, :cond_8

    .line 901
    :cond_4
    iget-object v8, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mUnCompleteIds:Ljava/util/ArrayList;

    invoke-direct {p0, v8}, Lcom/android/providers/downloads/ui/DownloadActivity;->hideDeleteDialog(Ljava/util/List;)Z

    .line 902
    iget-object v8, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mDownloadingAdapter:Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter;

    iget-object v9, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mUnCompleteIds:Ljava/util/ArrayList;

    iget-object v10, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mIdPositions:Ljava/util/HashMap;

    invoke-virtual {v8, p1, v9, v10}, Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter;->CursorRefresh(Landroid/database/Cursor;Ljava/util/List;Ljava/util/HashMap;)V

    .line 907
    :cond_5
    :goto_2
    iget v8, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mNumberOfComplete:I

    if-eq v1, v8, :cond_9

    .line 908
    iget-object v8, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mDownloadedAdapter:Lcom/android/providers/downloads/ui/DownloadedRecyclerAdapter;

    iget-object v9, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mCompleteIds:Ljava/util/ArrayList;

    iget-object v10, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mIdPositions:Ljava/util/HashMap;

    invoke-virtual {v8, p1, v9, v10}, Lcom/android/providers/downloads/ui/DownloadedRecyclerAdapter;->CursorRefresh(Landroid/database/Cursor;Ljava/util/List;Ljava/util/HashMap;)V

    .line 912
    :goto_3
    iget-boolean v9, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mDownloadingEmptyShow:Z

    iget v8, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mNumberOfUnComplete:I

    if-lez v8, :cond_a

    move v8, v6

    :goto_4
    if-ne v9, v8, :cond_6

    .line 913
    iget-object v8, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mDownloadListHandler:Lcom/android/providers/downloads/ui/DownloadActivity$DownloadListHandler;

    const/16 v9, 0xb

    # invokes: Lcom/android/providers/downloads/ui/DownloadActivity$DownloadListHandler;->sendResult(ILjava/lang/Object;)V
    invoke-static {v8, v9, v11}, Lcom/android/providers/downloads/ui/DownloadActivity$DownloadListHandler;->access$2000(Lcom/android/providers/downloads/ui/DownloadActivity$DownloadListHandler;ILjava/lang/Object;)V

    .line 915
    :cond_6
    iget-boolean v8, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mDownloadedEmptyShow:Z

    iget v9, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mNumberOfComplete:I

    if-lez v9, :cond_b

    :goto_5
    if-ne v8, v6, :cond_7

    .line 916
    iget-object v6, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mDownloadListHandler:Lcom/android/providers/downloads/ui/DownloadActivity$DownloadListHandler;

    const/16 v7, 0xc

    # invokes: Lcom/android/providers/downloads/ui/DownloadActivity$DownloadListHandler;->sendResult(ILjava/lang/Object;)V
    invoke-static {v6, v7, v11}, Lcom/android/providers/downloads/ui/DownloadActivity$DownloadListHandler;->access$2000(Lcom/android/providers/downloads/ui/DownloadActivity$DownloadListHandler;ILjava/lang/Object;)V

    .line 918
    :cond_7
    return-void

    .line 904
    :cond_8
    iget-object v8, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mDownloadingAdapter:Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter;

    iget-object v9, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mUnCompleteIds:Ljava/util/ArrayList;

    iget-object v10, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mIdPositions:Ljava/util/HashMap;

    invoke-virtual {v8, p1, v9, v10}, Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter;->CursorSwap(Landroid/database/Cursor;Ljava/util/List;Ljava/util/HashMap;)V

    .line 905
    iget-boolean v8, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mBusy:Z

    if-eqz v8, :cond_5

    iput-boolean v6, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mNeedUpdate:Z

    goto :goto_2

    .line 910
    :cond_9
    iget-object v8, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mDownloadedAdapter:Lcom/android/providers/downloads/ui/DownloadedRecyclerAdapter;

    iget-object v9, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mCompleteIds:Ljava/util/ArrayList;

    iget-object v10, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mIdPositions:Ljava/util/HashMap;

    invoke-virtual {v8, p1, v9, v10}, Lcom/android/providers/downloads/ui/DownloadedRecyclerAdapter;->CursorSwap(Landroid/database/Cursor;Ljava/util/List;Ljava/util/HashMap;)V

    goto :goto_3

    :cond_a
    move v8, v7

    .line 912
    goto :goto_4

    :cond_b
    move v6, v7

    .line 915
    goto :goto_5
.end method

.method public dismissAllDialogs()V
    .locals 1

    .prologue
    .line 857
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 858
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 860
    :cond_0
    return-void
.end method

.method protected getLayoutManager(I)Lflyme/support/v7/widget/LinearLayoutManager;
    .locals 2
    .param p1, "orientation"    # I

    .prologue
    .line 406
    new-instance v0, Lflyme/support/v7/widget/LinearLayoutManager;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lflyme/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    return-object v0
.end method

.method newDownloadTask()V
    .locals 14

    .prologue
    const/4 v10, 0x1

    const/4 v13, 0x0

    const/4 v12, 0x0

    .line 1272
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    .line 1273
    .local v7, "inflater":Landroid/view/LayoutInflater;
    const v9, 0x7f04007d

    invoke-virtual {v7, v9, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 1274
    .local v8, "view":Landroid/view/View;
    const v9, 0x7f0d0119

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    .line 1275
    .local v5, "editText":Landroid/widget/EditText;
    const v9, 0x7f0d011a

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 1276
    .local v6, "hints":Landroid/view/View;
    const/16 v9, 0x11

    invoke-virtual {v5, v9}, Landroid/widget/EditText;->setInputType(I)V

    .line 1277
    const/4 v2, 0x0

    .line 1279
    .local v2, "clipText":Ljava/lang/String;
    const-string v9, "clipboard"

    invoke-virtual {p0, v9}, Lcom/android/providers/downloads/ui/DownloadActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ClipboardManager;

    .line 1281
    .local v3, "clipboardManager":Landroid/content/ClipboardManager;
    invoke-virtual {v3}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1282
    invoke-virtual {v3}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ClipData;->getItemCount()I

    move-result v9

    if-lez v9, :cond_0

    .line 1283
    invoke-virtual {v3}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v9

    invoke-virtual {v9, v13}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1284
    .local v1, "charStr":Ljava/lang/CharSequence;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/providers/downloads/ui/DownloadActivity;->isUrl(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1285
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1289
    .end local v1    # "charStr":Ljava/lang/CharSequence;
    :cond_0
    invoke-virtual {v5, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1290
    invoke-virtual {v5, v10}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    .line 1291
    invoke-virtual {v5, v10}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 1292
    const/4 v9, 0x6

    invoke-virtual {v5, v12, v9}, Landroid/widget/EditText;->setImeActionLabel(Ljava/lang/CharSequence;I)V

    .line 1294
    new-instance v9, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v9, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9, v8}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v9

    const v10, 0x104000a

    new-instance v11, Lcom/android/providers/downloads/ui/DownloadActivity$13;

    invoke-direct {v11, p0, v5, v6}, Lcom/android/providers/downloads/ui/DownloadActivity$13;-><init>(Lcom/android/providers/downloads/ui/DownloadActivity;Landroid/widget/EditText;Landroid/view/View;)V

    invoke-virtual {v9, v10, v11}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v9

    const/high16 v10, 0x1040000

    invoke-virtual {v9, v10, v12}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v9

    const v10, 0x7f080043

    invoke-virtual {v9, v10}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v4

    .line 1315
    .local v4, "dialog":Landroid/support/v7/app/AlertDialog;
    invoke-virtual {v4}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    const/4 v10, 0x5

    invoke-virtual {v9, v10}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 1316
    invoke-virtual {v4}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 1317
    invoke-virtual {v8, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1318
    iput-object v8, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mNewTaskView:Landroid/view/View;

    .line 1319
    if-nez v2, :cond_1

    .line 1320
    const/4 v9, -0x1

    invoke-virtual {v4, v9}, Landroid/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 1321
    .local v0, "button":Landroid/widget/Button;
    invoke-virtual {v0, v13}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1323
    .end local v0    # "button":Landroid/widget/Button;
    :cond_1
    invoke-direct {p0, v4, v6}, Lcom/android/providers/downloads/ui/DownloadActivity;->newTextWatcher(Landroid/support/v7/app/AlertDialog;Landroid/view/View;)Landroid/text/TextWatcher;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1324
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 279
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 280
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadActivity;->initContentView()V

    .line 281
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadActivity;->checkDownloadPermission()V

    .line 282
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadActivity;->initActionBar()V

    .line 283
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 923
    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/DownloadActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 924
    .local v0, "inflater":Landroid/view/MenuInflater;
    const/high16 v1, 0x7f100000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 925
    const/4 v1, 0x1

    return v1
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 836
    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onDestroy()V

    .line 837
    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/DownloadActivity;->dismissAllDialogs()V

    .line 838
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mDownloadCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mDownloadCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 839
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mDownloadCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 841
    :cond_0
    invoke-static {}, Lcom/android/providers/downloads/ui/CacheManager;->clearDownloadInfo()V

    .line 842
    invoke-static {}, Lcom/android/providers/downloads/ui/CacheManager;->clearDownloadBitmap()V

    .line 843
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mDownloadListHandler:Lcom/android/providers/downloads/ui/DownloadActivity$DownloadListHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/providers/downloads/ui/DownloadActivity$DownloadListHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 844
    return-void
.end method

.method onDownloadStartNoStream(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 18
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "userAgent"    # Ljava/lang/String;
    .param p4, "contentDisposition"    # Ljava/lang/String;
    .param p5, "mimetype"    # Ljava/lang/String;
    .param p6, "privateBrowsing"    # Z

    .prologue
    .line 1402
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    invoke-static {v0, v1, v2}, Landroid/webkit/URLUtil;->guessFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1405
    .local v10, "filename":Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v14

    .line 1406
    .local v14, "status":Ljava/lang/String;
    const-string v3, "mounted"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1411
    const-string v3, "shared"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1412
    const v3, 0x7f080029

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1413
    .local v11, "msg":Ljava/lang/String;
    const v15, 0x7f080028

    .line 1419
    .local v15, "title":I
    :goto_0
    new-instance v3, Landroid/support/v7/app/AlertDialog$Builder;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v15}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x1080027

    invoke-virtual {v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setIcon(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v11}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    const/4 v8, 0x0

    invoke-virtual {v3, v4, v8}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 1421
    const/4 v3, 0x1

    .line 1489
    .end local v11    # "msg":Ljava/lang/String;
    .end local v15    # "title":I
    :goto_1
    return v3

    .line 1415
    :cond_0
    const v3, 0x7f080027

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v10, v4, v8

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 1416
    .restart local v11    # "msg":Ljava/lang/String;
    const v15, 0x7f080026

    .restart local v15    # "title":I
    goto :goto_0

    .line 1428
    .end local v11    # "msg":Ljava/lang/String;
    .end local v15    # "title":I
    :cond_1
    :try_start_0
    new-instance v17, Landroid/net/WebAddress;

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/net/WebAddress;-><init>(Ljava/lang/String;)V

    .line 1429
    .local v17, "webAddress":Landroid/net/WebAddress;
    invoke-virtual/range {v17 .. v17}, Landroid/net/WebAddress;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/providers/downloads/ui/DownloadActivity;->encodePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/net/WebAddress;->setPath(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1436
    invoke-virtual/range {v17 .. v17}, Landroid/net/WebAddress;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1437
    .local v6, "addressString":Ljava/lang/String;
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v16

    .line 1439
    .local v16, "uri":Landroid/net/Uri;
    :try_start_1
    new-instance v3, Ljava/net/URI;

    invoke-direct {v3, v6}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1448
    :try_start_2
    new-instance v5, Lcom/android/providers/downloads/ui/DownloadRequest;

    move-object/from16 v0, v16

    invoke-direct {v5, v0}, Lcom/android/providers/downloads/ui/DownloadRequest;-><init>(Landroid/net/Uri;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1455
    .local v5, "request":Lcom/android/providers/downloads/ui/DownloadRequest;
    move-object/from16 v0, p5

    invoke-virtual {v5, v0}, Lcom/android/providers/downloads/ui/DownloadRequest;->setMimeType(Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 1457
    invoke-virtual {v5}, Lcom/android/providers/downloads/ui/DownloadRequest;->allowScanningByMediaScanner()V

    .line 1458
    invoke-virtual/range {v17 .. v17}, Landroid/net/WebAddress;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/android/providers/downloads/ui/DownloadRequest;->setDescription(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    .line 1461
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/downloads/ui/DownloadActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 1462
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v3

    move-object/from16 v0, p2

    move/from16 v1, p6

    invoke-virtual {v3, v0, v1}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    .line 1463
    .local v7, "cookies":Ljava/lang/String;
    const-string v3, "cookie"

    invoke-virtual {v5, v3, v7}, Lcom/android/providers/downloads/ui/DownloadRequest;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 1464
    const/4 v3, 0x1

    invoke-virtual {v5, v3}, Lcom/android/providers/downloads/ui/DownloadRequest;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    .line 1466
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1467
    const/4 v3, 0x0

    goto :goto_1

    .line 1430
    .end local v5    # "request":Lcom/android/providers/downloads/ui/DownloadRequest;
    .end local v6    # "addressString":Ljava/lang/String;
    .end local v7    # "cookies":Ljava/lang/String;
    .end local v16    # "uri":Landroid/net/Uri;
    .end local v17    # "webAddress":Landroid/net/WebAddress;
    :catch_0
    move-exception v9

    .line 1432
    .local v9, "e":Ljava/lang/Exception;
    const-string v3, "DownloadActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception trying to parse url:"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1433
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 1440
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v6    # "addressString":Ljava/lang/String;
    .restart local v16    # "uri":Landroid/net/Uri;
    .restart local v17    # "webAddress":Landroid/net/WebAddress;
    :catch_1
    move-exception v9

    .line 1444
    .local v9, "e":Ljava/net/URISyntaxException;
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 1449
    .end local v9    # "e":Ljava/net/URISyntaxException;
    :catch_2
    move-exception v9

    .line 1453
    .local v9, "e":Ljava/lang/IllegalArgumentException;
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 1470
    .end local v9    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v5    # "request":Lcom/android/providers/downloads/ui/DownloadRequest;
    .restart local v7    # "cookies":Ljava/lang/String;
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->acquireProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    move-result-object v13

    .line 1471
    .local v13, "provider":Landroid/content/IContentProvider;
    if-nez v13, :cond_3

    .line 1472
    const v3, 0x7f080044

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/providers/downloads/ui/DownloadActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/meizu/common/app/SlideNotice;->makeNotice(Landroid/content/Context;Ljava/lang/CharSequence;)Lcom/meizu/common/app/SlideNotice;

    move-result-object v12

    .line 1473
    .local v12, "notice":Lcom/meizu/common/app/SlideNotice;
    const/4 v3, 0x1

    invoke-virtual {v12, v3}, Lcom/meizu/common/app/SlideNotice;->setActionBarToTop(Z)V

    .line 1474
    invoke-virtual {v12}, Lcom/meizu/common/app/SlideNotice;->show()V

    .line 1475
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 1479
    .end local v12    # "notice":Lcom/meizu/common/app/SlideNotice;
    :cond_3
    new-instance v3, Lcom/android/providers/downloads/ui/FetchUrlMimeType;

    move-object/from16 v4, p1

    move-object/from16 v8, p3

    invoke-direct/range {v3 .. v8}, Lcom/android/providers/downloads/ui/FetchUrlMimeType;-><init>(Landroid/content/Context;Lcom/android/providers/downloads/ui/DownloadRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/providers/downloads/ui/FetchUrlMimeType;->start()V

    .line 1480
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/downloads/ui/DownloadActivity;->toastWlan()V

    .line 1486
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/downloads/ui/DownloadActivity;->mHomepageViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v3

    if-eqz v3, :cond_4

    .line 1487
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/downloads/ui/DownloadActivity;->mHomepageViewPager:Landroid/support/v4/view/ViewPager;

    const/4 v4, 0x0

    const/4 v8, 0x1

    invoke-virtual {v3, v4, v8}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 1489
    :cond_4
    const/4 v3, 0x1

    goto/16 :goto_1
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 261
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 262
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 263
    .local v0, "uri":Landroid/net/Uri;
    if-nez v0, :cond_1

    .line 275
    :cond_0
    :goto_0
    return-void

    .line 264
    :cond_1
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mHomepageViewPager:Landroid/support/v4/view/ViewPager;

    if-nez v1, :cond_2

    .line 265
    const-string v1, "DownloadActivity"

    const-string v2, "Sorry, download has not been initialized completed"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 268
    :cond_2
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mHomepageViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    if-eqz v1, :cond_0

    .line 269
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mDeleteDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v1, :cond_3

    .line 270
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mDeleteDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->dismiss()V

    .line 271
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mDeleteDialog:Landroid/support/v7/app/AlertDialog;

    .line 273
    :cond_3
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mHomepageViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v2, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 936
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 981
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    :cond_0
    :goto_0
    return v3

    .line 938
    :pswitch_0
    sget-boolean v4, Lcom/android/providers/downloads/ui/EventAgentUtils;->SWITCHER:Z

    if-eqz v4, :cond_1

    .line 939
    const-string v4, "Allstart"

    invoke-static {p0, v4}, Lcom/android/providers/downloads/ui/EventAgentUtils;->onAction(Landroid/content/Context;Ljava/lang/String;)V

    .line 940
    :cond_1
    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/DownloadActivity;->toastWlan()V

    .line 941
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadActivity;->startAllPauseDownloads()V

    .line 942
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadActivity;->hasDownloadPausedOrFailed()Z

    move-result v4

    if-nez v4, :cond_0

    .line 943
    invoke-interface {p1, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 947
    :pswitch_1
    sget-boolean v4, Lcom/android/providers/downloads/ui/EventAgentUtils;->SWITCHER:Z

    if-eqz v4, :cond_2

    .line 948
    const-string v4, "Allpause"

    invoke-static {p0, v4}, Lcom/android/providers/downloads/ui/EventAgentUtils;->onAction(Landroid/content/Context;Ljava/lang/String;)V

    .line 949
    :cond_2
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadActivity;->pauseAllRunningDownloads()V

    .line 950
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadActivity;->hasDownloadRunning()Z

    move-result v4

    if-nez v4, :cond_0

    .line 951
    invoke-interface {p1, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 955
    :pswitch_2
    sget-boolean v4, Lcom/android/providers/downloads/ui/EventAgentUtils;->SWITCHER:Z

    if-eqz v4, :cond_3

    .line 956
    const-string v4, "Down_addurl"

    invoke-static {p0, v4}, Lcom/android/providers/downloads/ui/EventAgentUtils;->onAction(Landroid/content/Context;Ljava/lang/String;)V

    .line 957
    :cond_3
    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/DownloadActivity;->showDownloadTask()V

    goto :goto_0

    .line 960
    :pswitch_3
    sget-boolean v4, Lcom/android/providers/downloads/ui/EventAgentUtils;->SWITCHER:Z

    if-eqz v4, :cond_4

    .line 961
    const-string v4, "Empty"

    invoke-static {p0, v4}, Lcom/android/providers/downloads/ui/EventAgentUtils;->onAction(Landroid/content/Context;Ljava/lang/String;)V

    .line 962
    :cond_4
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadActivity;->deleteComleteDownloads()V

    goto :goto_0

    .line 965
    :pswitch_4
    sget-boolean v4, Lcom/android/providers/downloads/ui/EventAgentUtils;->SWITCHER:Z

    if-eqz v4, :cond_5

    .line 966
    const-string v4, "Settings"

    invoke-static {p0, v4}, Lcom/android/providers/downloads/ui/EventAgentUtils;->onAction(Landroid/content/Context;Ljava/lang/String;)V

    .line 968
    :cond_5
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 969
    .local v1, "intent":Landroid/content/Intent;
    const-class v4, Lcom/android/providers/downloads/ui/DefaultSaveSetting;

    invoke-virtual {v1, p0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 970
    invoke-virtual {p0, v1}, Lcom/android/providers/downloads/ui/DownloadActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 971
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 972
    .local v0, "ex":Landroid/content/ActivityNotFoundException;
    const v4, 0x7f080044

    invoke-virtual {p0, v4}, Lcom/android/providers/downloads/ui/DownloadActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/meizu/common/app/SlideNotice;->makeNotice(Landroid/content/Context;Ljava/lang/CharSequence;)Lcom/meizu/common/app/SlideNotice;

    move-result-object v2

    .line 973
    .local v2, "notice":Lcom/meizu/common/app/SlideNotice;
    invoke-virtual {v2, v3}, Lcom/meizu/common/app/SlideNotice;->setActionBarToTop(Z)V

    .line 974
    invoke-virtual {v2}, Lcom/meizu/common/app/SlideNotice;->show()V

    goto :goto_0

    .line 936
    nop

    :pswitch_data_0
    .packed-switch 0x7f0d011b
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 340
    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onPause()V

    .line 341
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadActivity;->unregisterReceiver()V

    .line 343
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 930
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/ui/DownloadActivity;->initSettingMenu(Landroid/view/Menu;)V

    .line 931
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 326
    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onResume()V

    .line 327
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadActivity;->registerReceiver()V

    .line 328
    iget-boolean v0, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mFlag_First:Z

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mHomepageViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/android/providers/downloads/ui/DownloadActivity$5;

    invoke-direct {v1, p0}, Lcom/android/providers/downloads/ui/DownloadActivity$5;-><init>(Lcom/android/providers/downloads/ui/DownloadActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->post(Ljava/lang/Runnable;)Z

    .line 336
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 678
    sget-boolean v0, Lcom/android/providers/downloads/ui/EventAgentUtils;->SWITCHER:Z

    if-eqz v0, :cond_0

    .line 679
    const-string v0, "page_download_ui"

    invoke-static {p0, v0}, Lcom/android/providers/downloads/ui/EventAgentUtils;->onPageStart(Landroid/content/Context;Ljava/lang/String;)V

    .line 680
    :cond_0
    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onStart()V

    .line 681
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 685
    sget-boolean v0, Lcom/android/providers/downloads/ui/EventAgentUtils;->SWITCHER:Z

    if-eqz v0, :cond_0

    .line 686
    const-string v0, "page_download_ui"

    invoke-static {p0, v0}, Lcom/android/providers/downloads/ui/EventAgentUtils;->onPageStop(Landroid/content/Context;Ljava/lang/String;)V

    .line 687
    :cond_0
    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onStop()V

    .line 688
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 848
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onTrimMemory(I)V

    .line 849
    const/16 v0, 0x3c

    if-lt p1, v0, :cond_0

    .line 850
    invoke-static {}, Lcom/android/providers/downloads/ui/CacheManager;->clearDownloadBitmap()V

    .line 851
    invoke-static {}, Lcom/android/providers/downloads/ui/CacheManager;->clearDownloadInfo()V

    .line 852
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 854
    :cond_0
    return-void
.end method

.method showDownloadTask()V
    .locals 7

    .prologue
    .line 1244
    iget-object v5, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mNewTaskView:Landroid/view/View;

    if-nez v5, :cond_0

    .line 1245
    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/DownloadActivity;->newDownloadTask()V

    .line 1269
    :goto_0
    return-void

    .line 1247
    :cond_0
    const/4 v1, 0x0

    .line 1248
    .local v1, "clipText":Ljava/lang/String;
    const-string v5, "clipboard"

    invoke-virtual {p0, v5}, Lcom/android/providers/downloads/ui/DownloadActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ClipboardManager;

    .line 1250
    .local v2, "clipboardManager":Landroid/content/ClipboardManager;
    invoke-virtual {v2}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1251
    invoke-virtual {v2}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ClipData;->getItemCount()I

    move-result v5

    if-lez v5, :cond_1

    .line 1252
    invoke-virtual {v2}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1253
    .local v0, "charStr":Ljava/lang/CharSequence;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/providers/downloads/ui/DownloadActivity;->isUrl(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1254
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1258
    .end local v0    # "charStr":Ljava/lang/CharSequence;
    :cond_1
    iget-object v5, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mNewTaskView:Landroid/view/View;

    const v6, 0x7f0d011a

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1259
    iget-object v5, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mNewTaskView:Landroid/view/View;

    const v6, 0x7f0d0119

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    .line 1260
    .local v4, "editText":Landroid/widget/EditText;
    if-eqz v1, :cond_2

    .line 1261
    invoke-virtual {v4, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1262
    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-static {v5}, Landroid/text/Selection;->selectAll(Landroid/text/Spannable;)V

    .line 1266
    :goto_1
    iget-object v5, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mNewTaskView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/app/AlertDialog;

    .line 1267
    .local v3, "dialog":Landroid/support/v7/app/AlertDialog;
    invoke-virtual {v3}, Landroid/support/v7/app/AlertDialog;->show()V

    goto :goto_0

    .line 1264
    .end local v3    # "dialog":Landroid/support/v7/app/AlertDialog;
    :cond_2
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public toastWlan()V
    .locals 2

    .prologue
    .line 1604
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mDownloadCursor:Landroid/database/Cursor;

    invoke-direct {p0, v1}, Lcom/android/providers/downloads/ui/DownloadActivity;->onlyNewBrowserDownload(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1605
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mDownloadCursor:Landroid/database/Cursor;

    invoke-direct {p0, v1}, Lcom/android/providers/downloads/ui/DownloadActivity;->shouldToastBrowser(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1606
    invoke-static {p0}, Lcom/android/providers/downloads/ui/DialogHelper;->showOnlyWifiDialog(Landroid/app/Activity;)V

    .line 1621
    :cond_0
    :goto_0
    return-void

    .line 1609
    :cond_1
    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/DownloadActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/providers/downloads/ui/NetworkUtils;->getActiveNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 1610
    .local v0, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1611
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadActivity;->dismissSlideNotice()V

    .line 1613
    iget v1, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->mNumberOfUnComplete:I

    if-lez v1, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/DownloadActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/providers/downloads/ui/SharedPreferencesUtils;->isOnlyWifi(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/DownloadActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/providers/downloads/ui/PermissionHelper;->isPermissionOk(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1614
    invoke-static {p0}, Lcom/android/providers/downloads/ui/DialogHelper;->showOnlyWifiDialog(Landroid/app/Activity;)V

    goto :goto_0

    .line 1617
    :cond_2
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadActivity;->showNetWorkUnavailable()V

    .line 1618
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/providers/downloads/ui/DownloadActivity;->isSlideNoticeShow:Z

    goto :goto_0
.end method
