.class public final Lcom/meizu/common/widget/MzContactsContract$MzNetContacts;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.meizu.netcontactservice.directory"

.field public static final ERROR_CODE_KEY:Ljava/lang/String; = "error_code"

.field public static final ERROR_CODE_NETWORK_UNAVAILABLE:I = 0x1

.field public static final ERROR_CODE_NO_ADDRESS:I = 0x2

.field public static final ERROR_CODE_NUMBER_INVALIDATE:I = 0x3

.field public static final ERROR_CODE_SUCCESS:I = 0x0

.field public static final ERROR_CODE_UNKNOWN:I = 0x4

.field public static final LINK_DISPLAY_NAME_AND_LABLE:Ljava/lang/String; = "link_display_name_and_lable"

.field public static final NET_CONTACT_ACCOUNT_TYPE:Ljava/lang/String; = "com.meizu.netcontactservice"

.field public static final NET_CONTACT_DIRECTORY_TYPE:Ljava/lang/String; = "NetContact"

.field public static final PHONE_LOOKUP_URI:Landroid/net/Uri;

.field public static final USE_YELLOW_PAGE_CONTACTS:Ljava/lang/String; = "use_yellow_page_contacts"

.field public static final YELLOW_PAGE_MIN_ID:J = 0x7fffffffbfffffffL


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 945
    const-string v0, "content://com.meizu.netcontactservice.directory"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "phone_lookup"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/meizu/common/widget/MzContactsContract$MzNetContacts;->PHONE_LOOKUP_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 942
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isYPContact(J)Z
    .locals 1

    .prologue
    .line 984 
    const/4 v0, 0x0

    return v0 
.end method

.method public static isYPContact(Landroid/net/Uri;)Z
    .locals 1

    .prologue
    .line 974
    const/4 v0, 0x0

    return v0 
.end method
