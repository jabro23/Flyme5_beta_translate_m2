.class public Lcom/meizu/flyme/calendar/settings/SettingsActivity;
.super Landroid/support/v7/app/ag;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field public static final a:[Ljava/lang/String;


# instance fields
.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/flyme/calendar/i;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/flyme/calendar/i;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/flyme/calendar/i;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/meizu/flyme/calendar/i;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/flyme/calendar/settings/CalCheckBoxPreference;",
            ">;"
        }
    .end annotation
.end field

.field private g:[Ljava/lang/String;

.field private h:[Ljava/lang/String;

.field private i:I

.field private j:Lcom/meizu/flyme/calendar/events/helper/a;

.field private k:Landroid/preference/PreferenceCategory;

.field private l:I

.field private m:I

.field private n:[I

.field private o:Landroid/preference/PreferenceScreen;

.field private p:Landroid/preference/ListPreference;

.field private q:Landroid/preference/ListPreference;

.field private s:Lcom/meizu/flyme/calendar/settings/CalCheckBoxPreference;

.field private t:Lcom/meizu/flyme/calendar/i;

.field private u:Lcom/meizu/flyme/calendar/i;

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 563
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "calendar_displayName"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "ownerAccount"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "calendar_color"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "canOrganizerRespond"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "calendar_access_level"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "visible"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "maxReminders"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "allowedReminders"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "allowedAttendeeTypes"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "allowedAvailability"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "account_name"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "account_type"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "name"

    aput-object v2, v0, v1

    sput-object v0, Lcom/meizu/flyme/calendar/settings/SettingsActivity;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x1e

    .line 51
    invoke-direct {p0}, Landroid/support/v7/app/ag;-><init>()V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/flyme/calendar/settings/SettingsActivity;->b:Ljava/util/ArrayList;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/flyme/calendar/settings/SettingsActivity;->c:Ljava/util/ArrayList;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/flyme/calendar/settings/SettingsActivity;->d:Ljava/util/ArrayList;

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/meizu/flyme/calendar/settings/SettingsActivity;->e:Ljava/util/HashMap;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/flyme/calendar/settings/SettingsActivity;->f:Ljava/util/ArrayList;

    .line 68
    iput v1, p0, Lcom/meizu/flyme/calendar/settings/SettingsActivity;->l:I

    .line 69
    iput v1, p0, Lcom/meizu/flyme/calendar/settings/SettingsActivity;->m:I

    return-void
.end method

.method public static a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 223
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 224
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 225
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 226
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 228
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 229
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v6, v6, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 230
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v5}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 231
    const/4 v1, 0x1

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 232
    invoke-virtual {v3, v6, v6, v6, v6}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 233
    const v1, -0xbdbdbe

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 234
    invoke-virtual {v3, v0, p1, p1, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 235
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 236
    invoke-virtual {v3, p0, v5, v5, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 238
    return-object v2
.end method

.method private a(I)Landroid/graphics/drawable/Drawable;
    .locals 4

    .prologue
    .line 213
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/meizu/flyme/calendar/settings/SettingsActivity;->n:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 214
    iget-object v1, p0, Lcom/meizu/flyme/calendar/settings/SettingsActivity;->n:[I

    aput p1, v1, v0

    .line 213
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/meizu/flyme/calendar/settings/SettingsActivity;->n:[I

    iget v1, p0, Lcom/meizu/flyme/calendar/settings/SettingsActivity;->l:I

    iget v2, p0, Lcom/meizu/flyme/calendar/settings/SettingsActivity;->m:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 218
    const/high16 v1, 0x41f00000    # 30.0f

    invoke-static {v0, v1}, Lcom/meizu/flyme/calendar/settings/SettingsActivity;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 219
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    return-object v1
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 242
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/meizu/flyme/calendar/settings/SettingsActivity;->h:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 243
    iget-object v1, p0, Lcom/meizu/flyme/calendar/settings/SettingsActivity;->h:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 244
    iget-object v1, p0, Lcom/meizu/flyme/calendar/settings/SettingsActivity;->g:[Ljava/lang/String;

    aget-object v0, v1, v0

    .line 248
    :goto_1
    return-object v0

    .line 242
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 248
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private a(IZ)V
    .locals 6

    .prologue
    .line 252
    if-eqz p2, :cond_1

    const/4 v0, 0x1

    move v1, v0

    .line 253
    :goto_0
    iget-object v0, p0, Lcom/meizu/flyme/calendar/settings/SettingsActivity;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/flyme/calendar/i;

    .line 254
    invoke-virtual {v0}, Lcom/meizu/flyme/calendar/i;->g()I

    move-result v2

    if-eq v2, v1, :cond_2

    .line 255
    new-instance v2, Lcom/meizu/flyme/calendar/i;

    invoke-direct {v2}, Lcom/meizu/flyme/calendar/i;-><init>()V

    .line 256
    invoke-virtual {v0}, Lcom/meizu/flyme/calendar/i;->a()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/meizu/flyme/calendar/i;->a(J)V

    .line 257
    invoke-virtual {v2, v1}, Lcom/meizu/flyme/calendar/i;->a(I)V

    .line 258
    iget-object v1, p0, Lcom/meizu/flyme/calendar/settings/SettingsActivity;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/meizu/flyme/calendar/i;->a()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    :cond_0
    :goto_1
    return-void

    .line 252
    :cond_1
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0

    .line 260
    :cond_2
    iget-object v1, p0, Lcom/meizu/flyme/calendar/settings/SettingsActivity;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/meizu/flyme/calendar/i;->a()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 261
    iget-object v1, p0, Lcom/meizu/flyme/calendar/settings/SettingsActivity;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/meizu/flyme/calendar/i;->a()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method private a(Landroid/database/Cursor;)V
    .locals 13

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 355
    iget-object v2, p0, Lcom/meizu/flyme/calendar/settings/SettingsActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 357
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-gtz v2, :cond_1

    .line 359
    :cond_0
    iget-object v0, p0, Lcom/meizu/flyme/calendar/settings/SettingsActivity;->q:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 360
    iget-object v0, p0, Lcom/meizu/flyme/calendar/settings/SettingsActivity;->q:Landroid/preference/ListPreference;

    const v1, 0x7f090126

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 424
    :goto_0
    return-void

    .line 364
    :cond_1
    iget-object v2, p0, Lcom/meizu/flyme/calendar/settings/SettingsActivity;->q:Landroid/preference/ListPreference;

    invoke-virtual {v2, v5}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 366
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 367
    iput-object v0, p0, Lcom/meizu/flyme/calendar/settings/SettingsActivity;->v:Ljava/lang/String;

    .line 368
    new-array v3, v2, [Ljava/lang/String;

    iput-object v3, p0, Lcom/meizu/flyme/calendar/settings/SettingsActivity;->g:[Ljava/lang/String;

    .line 369
    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/meizu/flyme/calendar/settings/SettingsActivity;->h:[Ljava/lang/String;

    .line 371
    const-string v2, "preference_defaultCalendar"

    check-cast v0, Ljava/lang/String;

    invoke-static {p0, v2, v0}, Lcom/meizu/flyme/calendar/settings/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 374
    const-string v0, "ownerAccount"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 375
    const-string v0, "calendar_displayName"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 376
    const-string v0, "account_name"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 377
    const-string v0, "account_type"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 381
    const/4 v0, -0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move v0, v1

    move v2, v1

    move v3, v1

    .line 382
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 383
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 384
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 385
    const-string v12, "System"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 386
    const v4, 0x7f09007f

    invoke-virtual {p0, v4}, Lcom/meizu/flyme/calendar/settings/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 388
    :cond_2
    iget-object v12, p0, Lcom/meizu/flyme/calendar/settings/SettingsActivity;->g:[Ljava/lang/String;

    aput-object v11, v12, v3

    .line 389
    iget-object v12, p0, Lcom/meizu/flyme/calendar/settings/SettingsActivity;->h:[Ljava/lang/String;

    aput-object v4, v12, v3

    .line 390
    if-nez v6, :cond_4

    .line 393
    if-eqz v11, :cond_3

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "LOCAL"

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    move v0, v3

    move v2, v5

    .line 405
    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 406
    goto :goto_1

    .line 400
    :cond_4
    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v0, v3

    move v2, v5

    .line 403
    goto :goto_2

    .line 408
    :cond_5
    if-eqz v2, :cond_7

    .line 409
    iget-object v1, p0, Lcom/meizu/flyme/calendar/settings/SettingsActivity;->g:[Ljava/lang/String;

    aget-object v1, v1, v0

    iput-object v1, p0, Lcom/meizu/flyme/calendar/settings/SettingsActivity;->v:Ljava/lang/String;

    .line 415
    :goto_3
    iget-object v1, p0, Lcom/meizu/flyme/calendar/settings/SettingsActivity;->v:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 416
    const-string v1, "preference_defaultCalendar"

    iget-object v2, p0, Lcom/meizu/flyme/calendar/settings/SettingsActivity;->v:Ljava/lang/String;

    invoke-static {p0, v1, v2}, Lcom/meizu/flyme/calendar/settings/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    :cond_6
    iget-object v1, p0, Lcom/meizu/flyme/calendar/settings/SettingsActivity;->q:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/meizu/flyme/calendar/settings/SettingsActivity;->h:[Ljava/lang/String;

    aget-object v0, v2, v0

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 420
    iget-object v0, p0, Lcom/meizu/flyme/calendar/settings/SettingsActivity;->q:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/meizu/flyme/calendar/settings/SettingsActivity;->h:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 421
    iget-object v0, p0, Lcom/meizu/flyme/calendar/settings/SettingsActivity;->q:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/meizu/flyme/calendar/settings/SettingsActivity;->g:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 422
    iget-object v0, p0, Lcom/meizu/flyme/calendar/settings/SettingsActivity;->q:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/meizu/flyme/calendar/settings/SettingsActivity;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 423
    iget-object v0, p0, Lcom/meizu/flyme/calendar/settings/SettingsActivity;->q:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/meizu/flyme/calendar/settings/SettingsActivity;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setDefaultValue(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 412
    :cond_7
    iget-object v0, p0, Lcom/meizu/flyme/calendar/settings/SettingsActivity;->g:[Ljava/lang/String;

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/meizu/flyme/calendar/settings/SettingsActivity;->v:Ljava/lang/String;

    move v0, v1

    goto :goto_3
.end method

.method private a(Lcom/meizu/flyme/calendar/i;)V
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 542
    iget-object v0, p0, Lcom/meizu/flyme/calendar/settings/SettingsActivity;->j:Lcom/meizu/flyme/calendar/events/helper/a;

    invoke-virtual {v0}, Lcom/meizu/flyme/calendar/events/helper/a;->b()I

    move-result v0

    iput v0, p0, Lcom/meizu/flyme/calendar/settings/SettingsActivity;->i:I

    .line 543
    invoke-virtual {p1}, Lcom/meizu/flyme/calendar/i;->a()J

    move-result-wide v0

    .line 544
    sget-object v2, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 545
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 546
    const-string v0, "visible"

    invoke-virtual {p1}, Lcom/meizu/flyme/calendar/i;->g()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 547
    iget-object v1, p0, Lcom/meizu/flyme/calendar/settings/SettingsActivity;->j:Lcom/meizu/flyme/calendar/events/helper/a;

    iget v2, p0, Lcom/meizu/flyme/calendar/settings/SettingsActivity;->i:I

    const-wide/16 v8, 0x0

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v1 .. v9}, Lcom/meizu/flyme/calendar/events/helper/a;->a(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;J)V

    .line 548
    return-void
.end method

.method static synthetic a(Lcom/meizu/flyme/calendar/settings/SettingsActivity;IZ)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/meizu/flyme/calendar/settings/SettingsActivity;->a(IZ)V

    return-void
.end method

.method static synthetic b(Lcom/meizu/flyme/calendar/settings/SettingsActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/meizu/flyme/calendar/settings/SettingsActivity;->w:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/meizu/flyme/calendar/settings/SettingsActivity;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/meizu/flyme/calendar/settings/SettingsActivity;->f:Ljava/util/ArrayList;

    return-object v0
.end method

.method private d()V
    .locals 3

    .prologue
    .line 103
    const v0, 0x7f080002

    invoke-virtual {p0, v0}, Lcom/meizu/flyme/calendar/settings/SettingsActivity;->addPreferencesFromResource(I)V

    .line 105
    const-string v0, "pref_key_notice"

    invoke-virtual {p0, v0}, Lcom/meizu/flyme/calendar/settings/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/meizu/flyme/calendar/settings/SettingsActivity;->o:Landroid/preference/PreferenceScreen;

    .line 106
    const-string v0, "preferences_week_start_day"

    invoke-virtual {p0, v0}, Lcom/meizu/flyme/calendar/settings/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/meizu/flyme/calendar/settings/SettingsActivity;->p:Landroid/preference/ListPreference;

    .line 107
    const-string v0, "preference_defaultCalendar"

    invoke-virtual {p0, v0}, Lcom/meizu/flyme/calendar/settings/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/meizu/flyme/calendar/settings/SettingsActivity;->q:Landroid/preference/ListPreference;

    .line 108
    const-string v0, "pref_key_header_visible_calendars"

    invoke-virtual {p0, v0}, Lcom/meizu/flyme/calendar/settings/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/meizu/flyme/calendar/settings/SettingsActivity;->k:Landroid/preference/PreferenceCategory;

    .line 111
    const-string v0, "preferences_contacts_birthday"

    invoke-virtual {p0, v0}, Lcom/meizu/flyme/calendar/settings/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/meizu/flyme/calendar/settings/CalCheckBoxPreference;

    iput-object v0, p0, Lcom/meizu/flyme/calendar/settings/SettingsActivity;->s:Lcom/meizu/flyme/calendar/settings/CalCheckBoxPreference;

    .line 114
    iget-object v0, p0, Lcom/meizu/flyme/calendar/settings/SettingsActivity;->p:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/meizu/flyme/calendar/settings/SettingsActivity;->p:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 117
    iget-object v0, p0, Lcom/meizu/flyme/calendar/settings/SettingsActivity;->o:Landroid/preference/PreferenceScreen;

    new-instance v1, Lcom/meizu/flyme/calendar/settings/SettingsActivity$1;

    invoke-direct {v1, p0}, Lcom/meizu/flyme/calendar/settings/SettingsActivity$1;-><init>(Lcom/meizu/flyme/calendar/settings/SettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 130
    iget-object v0, p0, Lcom/meizu/flyme/calendar/settings/SettingsActivity;->p:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 131
    iget-object v0, p0, Lcom/meizu/flyme/calendar/settings/SettingsActivity;->q:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 133
    iget-object v0, p0, Lcom/meizu/flyme/calendar/settings/SettingsActivity;->s:Lcom/meizu/flyme/calendar/settings/CalCheckBoxPreference;

    invoke-virtual {v0, p0}, Lcom/meizu/flyme/calendar/settings/CalCheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 136
    iget-object v0, p0, Lcom/meizu/flyme/calendar/settings/SettingsActivity;->s:Lcom/meizu/flyme/calendar/settings/CalCheckBoxPreference;

    const v1, 0x7f040051

    invoke-virtual {v0, v1}, Lcom/meizu/flyme/calendar/settings/CalCheckBoxPreference;->setLayoutResource(I)V

    .line 138
    iget-object v0, p0, Lcom/meizu/flyme/calendar/settings/SettingsActivity;->s:Lcom/meizu/flyme/calendar/settings/CalCheckBoxPreference;

    invoke-virtual {p0}, Lcom/meizu/flyme/calendar/settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100027

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/meizu/flyme/calendar/settings/SettingsActivity;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/flyme/calendar/settings/CalCheckBoxPreference;->a(Landroid/graphics/drawable/Drawable;)V

    .line 140
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/meizu/flyme/calendar/v;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/meizu/flyme/calendar/p;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 141
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/flyme/calendar/settings/SettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "pref_key_useful_info"

    invoke-virtual {p0, v1}, Lcom/meizu/flyme/calendar/settings/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 143
    :cond_1
    return-void
.end method

.method private e()V
    .locals 4

    .prologue
    .line 147
    invoke-static {p0}, Lcom/meizu/flyme/calendar/dateview/datasource/cupboardhelper/ConstellationAlmanacDbHelper;->getRxDatabase(Landroid/content/Context;)Lcom/meizu/flyme/calendar/s;

    move-result-object v0

    .line 148
    invoke-static {}, Lb/b/a/d;->a()Lb/b/a/b;

    move-result-object v1

    const-class v2, Lcom/meizu/flyme/calendar/dateview/datasource/festival/FestivalList;

    invoke-virtual {v1, v2}, Lb/b/a/b;->c(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 149
    invoke-static {}, Lb/b/a/d;->a()Lb/b/a/b;

    move-result-object v1

    const-class v2, Lcom/meizu/flyme/calendar/dateview/datasource/festival/FestivalList;

    invoke-virtual {v1, v2}, Lb/b/a/b;->a(Ljava/lang/Class;)V

    .line 151
    :cond_0
    const-class v1, Lcom/meizu/flyme/calendar/dateview/datasource/festival/FestivalList;

    const-string v2, "code is not null ORDER BY sort ASC"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/meizu/flyme/calendar/s;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)Lrx/a;

    move-result-object v0

    invoke-virtual {v0}, Lrx/a;->f()Lrx/a;

    move-result-object v0

    new-instance v1, Lcom/meizu/flyme/calendar/settings/SettingsActivity$4;

    invoke-direct {v1, p0}, Lcom/meizu/flyme/calendar/settings/SettingsActivity$4;-><init>(Lcom/meizu/flyme/calendar/settings/SettingsActivity;)V

    invoke-virtual {v0, v1}, Lrx/a;->a(Lrx/c/b;)Lrx/a;

    move-result-object v0

    new-instance v1, Lcom/meizu/flyme/calendar/settings/SettingsActivity$2;

    invoke-direct {v1, p0}, Lcom/meizu/flyme/calendar/settings/SettingsActivity$2;-><init>(Lcom/meizu/flyme/calendar/settings/SettingsActivity;)V

    new-instance v2, Lcom/meizu/flyme/calendar/settings/SettingsActivity$3;

    invoke-direct {v2, p0}, Lcom/meizu/flyme/calendar/settings/SettingsActivity$3;-><init>(Lcom/meizu/flyme/calendar/settings/SettingsActivity;)V

    invoke-virtual {v0, v1, v2}, Lrx/a;->a(Lrx/c/b;Lrx/c/b;)Lrx/i;

    .line 191
    return-void
.end method

.method private f()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 337
    iget-object v0, p0, Lcom/meizu/flyme/calendar/settings/SettingsActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 339
    invoke-virtual {p0}, Lcom/meizu/flyme/calendar/settings/SettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/meizu/flyme/calendar/settings/SettingsActivity;->a:[Ljava/lang/String;

    const-string v3, "calendar_access_level>=500"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 344
    :try_start_0
    invoke-direct {p0, v0}, Lcom/meizu/flyme/calendar/settings/SettingsActivity;->a(Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 346
    if-eqz v0, :cond_0

    .line 347
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 350
    :cond_0
    return-void

    .line 346
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    .line 347
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v1
.end method

.method private g()V
    .locals 10

    .prologue
    .line 427
    iget-object v0, p0, Lcom/meizu/flyme/calendar/settings/SettingsActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 431
    invoke-virtual {p0}, Lcom/meizu/flyme/calendar/settings/SettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/meizu/flyme/calendar/settings/SettingsActivity;->a:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 433
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_3

    .line 434
    const/4 v1, -0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 435
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 436
    const/16 v1, 0xb

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 437
    const/16 v1, 0xc

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 438
    new-instance v1, Lcom/meizu/flyme/calendar/i;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const/16 v6, 0xd

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x3

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const/4 v9, 0x6

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    invoke-direct/range {v1 .. v9}, Lcom/meizu/flyme/calendar/i;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 447
    const-string v2, "Contact Birthday"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "LOCAL"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 449
    iput-object v1, p0, Lcom/meizu/flyme/calendar/settings/SettingsActivity;->t:Lcom/meizu/flyme/calendar/i;

    goto :goto_0

    .line 454
    :cond_0
    const-string v2, "FestivalDays-"

    invoke-virtual {v4, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "LOCAL"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 456
    iput-object v1, p0, Lcom/meizu/flyme/calendar/settings/SettingsActivity;->u:Lcom/meizu/flyme/calendar/i;

    goto :goto_0

    .line 461
    :cond_1
    const-string v2, "com.meizu.account"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 462
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/meizu/flyme/calendar/i;->a(Ljava/lang/String;)V

    .line 465
    :cond_2
    iget-object v2, p0, Lcom/meizu/flyme/calendar/settings/SettingsActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 466
    iget-object v2, p0, Lcom/meizu/flyme/calendar/settings/SettingsActivity;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 470
    :cond_3
    if-eqz v0, :cond_4

    .line 471
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 474
    :cond_4
    iget-object v0, p0, Lcom/meizu/flyme/calendar/settings/SettingsActivity;->t:Lcom/meizu/flyme/calendar/i;

    if-nez v0, :cond_6

    .line 475
    iget-object v0, p0, Lcom/meizu/flyme/calendar/settings/SettingsActivity;->s:Lcom/meizu/flyme/calendar/settings/CalCheckBoxPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/meizu/flyme/calendar/settings/CalCheckBoxPreference;->setChecked(Z)V

    .line 476
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/meizu/flyme/calendar/settings/SettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/meizu/flyme/calendar/birthday/EventsService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 477
    invoke-virtual {p0, v0}, Lcom/meizu/flyme/calendar/settings/SettingsActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 482
    :goto_1
    iget-object v0, p0, Lcom/meizu/flyme/calendar/settings/SettingsActivity;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 483
    iget-object v0, p0, Lcom/meizu/flyme/calendar/settings/SettingsActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 535
    :cond_5
    return-void

    .line 479
    :cond_6
    iget-object v1, p0, Lcom/meizu/flyme/calendar/settings/SettingsActivity;->s:Lcom/meizu/flyme/calendar/settings/CalCheckBoxPreference;

    iget-object v0, p0, Lcom/meizu/flyme/calendar/settings/SettingsActivity;->t:Lcom/meizu/flyme/calendar/i;

    invoke-virtual {v0}, Lcom/meizu/flyme/calendar/i;->g()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_7

    const/4 v0, 0x1

    :goto_2
    invoke-virtual {v1, v0}, Lcom/meizu/flyme/calendar/settings/CalCheckBoxPreference;->setChecked(Z)V

    goto :goto_1

    :cond_7
    const/4 v0, 0x0

    goto :goto_2

    .line 488
    :cond_8
    const/16 v0, 0x64

    .line 489
    iget-object v1, p0, Lcom/meizu/flyme/calendar/settings/SettingsActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/flyme/calendar/i;

    .line 490
    add-int/lit8 v1, v1, 0x1

    .line 491
    new-instance v5, Lcom/meizu/flyme/calendar/settings/CalCheckBoxPreference;

    invoke-direct {v5, p0}, Lcom/meizu/flyme/calendar/settings/CalCheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 492
    const/4 v2, 0x0

    .line 493
    const-string v3, "System"

    invoke-virtual {v0}, Lcom/meizu/flyme/calendar/i;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 494
    const/4 v2, 0x1

    move v3, v2

    .line 498
    :goto_4
    if-eqz v3, :cond_a

    const v2, 0x7f09007f

    invoke-virtual {p0, v2}, Lcom/meizu/flyme/calendar/settings/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_5
    invoke-virtual {v5, v2}, Lcom/meizu/flyme/calendar/settings/CalCheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 500
    if-nez v3, :cond_9

    invoke-virtual {v0}, Lcom/meizu/flyme/calendar/i;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/meizu/flyme/calendar/i;->e()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 501
    :cond_9
    const/4 v2, 0x0

    invoke-virtual {v5, v2}, Lcom/meizu/flyme/calendar/settings/CalCheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 506
    :goto_6
    invoke-virtual {v0}, Lcom/meizu/flyme/calendar/i;->g()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_c

    const/4 v2, 0x1

    :goto_7
    invoke-virtual {v5, v2}, Lcom/meizu/flyme/calendar/settings/CalCheckBoxPreference;->setChecked(Z)V

    .line 508
    invoke-virtual {v5, v1}, Lcom/meizu/flyme/calendar/settings/CalCheckBoxPreference;->setOrder(I)V

    .line 510
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/meizu/flyme/calendar/i;->a()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/meizu/flyme/calendar/i;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/meizu/flyme/calendar/settings/CalCheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 512
    invoke-virtual {v0}, Lcom/meizu/flyme/calendar/i;->f()I

    move-result v0

    invoke-static {v0}, Lcom/meizu/flyme/calendar/v;->b(I)I

    move-result v0

    .line 513
    invoke-direct {p0, v0}, Lcom/meizu/flyme/calendar/settings/SettingsActivity;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/meizu/flyme/calendar/settings/CalCheckBoxPreference;->a(Landroid/graphics/drawable/Drawable;)V

    .line 515
    new-instance v0, Lcom/meizu/flyme/calendar/settings/SettingsActivity$5;

    invoke-direct {v0, p0}, Lcom/meizu/flyme/calendar/settings/SettingsActivity$5;-><init>(Lcom/meizu/flyme/calendar/settings/SettingsActivity;)V

    invoke-virtual {v5, v0}, Lcom/meizu/flyme/calendar/settings/CalCheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 528
    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Lcom/meizu/flyme/calendar/settings/CalCheckBoxPreference;->setPersistent(Z)V

    .line 529
    iget-object v0, p0, Lcom/meizu/flyme/calendar/settings/SettingsActivity;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 498
    :cond_a
    invoke-virtual {v0}, Lcom/meizu/flyme/calendar/i;->e()Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    .line 503
    :cond_b
    invoke-virtual {v0}, Lcom/meizu/flyme/calendar/i;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/meizu/flyme/calendar/settings/CalCheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 506
    :cond_c
    const/4 v2, 0x0

    goto :goto_7

    .line 532
    :cond_d
    iget-object v0, p0, Lcom/meizu/flyme/calendar/settings/SettingsActivity;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/flyme/calendar/settings/CalCheckBoxPreference;

    .line 533
    iget-object v2, p0, Lcom/meizu/flyme/calendar/settings/SettingsActivity;->k:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_8

    :cond_e
    move v3, v2

    goto/16 :goto_4
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 90
    invoke-super {p0, p1}, Landroid/support/v7/app/ag;->onCreate(Landroid/os/Bundle;)V

    .line 91
    iget v0, p0, Lcom/meizu/flyme/calendar/settings/SettingsActivity;->l:I

    iget v1, p0, Lcom/meizu/flyme/calendar/settings/SettingsActivity;->m:I

    mul-int/2addr v0, v1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/meizu/flyme/calendar/settings/SettingsActivity;->n:[I

    .line 92
    invoke-virtual {p0}, Lcom/meizu/flyme/calendar/settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090115

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/flyme/calendar/settings/SettingsActivity;->w:Ljava/lang/String;

    .line 94
    invoke-virtual {p0}, Lcom/meizu/flyme/calendar/settings/SettingsActivity;->a()Landroid/support/v7/app/a;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/app/a;->a(Z)V

    .line 95
    invoke-virtual {p0}, Lcom/meizu/flyme/calendar/settings/SettingsActivity;->a()Landroid/support/v7/app/a;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/app/a;->d(Z)V

    .line 97
    invoke-direct {p0}, Lcom/meizu/flyme/calendar/settings/SettingsActivity;->d()V

    .line 99
    new-instance v0, Lcom/meizu/flyme/calendar/events/helper/a;

    invoke-direct {v0, p0}, Lcom/meizu/flyme/calendar/events/helper/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/meizu/flyme/calendar/settings/SettingsActivity;->j:Lcom/meizu/flyme/calendar/events/helper/a;

    .line 100
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 621
    invoke-super {p0}, Landroid/support/v7/app/ag;->onDestroy()V

    .line 622
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 327
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 328
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 329
    invoke-virtual {p0}, Lcom/meizu/flyme/calendar/settings/SettingsActivity;->onBackPressed()V

    .line 330
    const/4 v0, 0x1

    .line 333
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/app/ag;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 195
    invoke-super {p0}, Landroid/support/v7/app/ag;->onPause()V

    .line 196
    iget-object v0, p0, Lcom/meizu/flyme/calendar/settings/SettingsActivity;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/flyme/calendar/i;

    .line 197
    invoke-direct {p0, v0}, Lcom/meizu/flyme/calendar/settings/SettingsActivity;->a(Lcom/meizu/flyme/calendar/i;)V

    goto :goto_0

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/meizu/flyme/calendar/settings/SettingsActivity;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 200
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 268
    iget-object v0, p0, Lcom/meizu/flyme/calendar/settings/SettingsActivity;->p:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_4

    .line 269
    invoke-virtual {p0}, Lcom/meizu/flyme/calendar/settings/SettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "week_start"

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-static {v2, v4, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 270
    iget-object v2, p0, Lcom/meizu/flyme/calendar/settings/SettingsActivity;->p:Landroid/preference/ListPreference;

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 271
    iget-object v0, p0, Lcom/meizu/flyme/calendar/settings/SettingsActivity;->p:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/meizu/flyme/calendar/settings/SettingsActivity;->p:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 272
    check-cast p2, Ljava/lang/String;

    .line 274
    const-string v0, "-1"

    invoke-static {p2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 275
    const-string v3, "default"

    .line 282
    :cond_0
    :goto_0
    invoke-static {}, Lcom/meizu/flyme/calendar/b/a;->a()Lcom/meizu/flyme/calendar/b/a;

    move-result-object v0

    new-instance v2, Lcom/meizu/flyme/calendar/u;

    const-string v4, "Set_weekstart"

    const-string v5, "Setting"

    invoke-direct {v2, v4, v5, v3}, Lcom/meizu/flyme/calendar/u;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/meizu/flyme/calendar/b/a;->a(Ljava/lang/Object;)V

    :cond_1
    :goto_1
    move v10, v1

    .line 322
    :goto_2
    return v10

    .line 276
    :cond_2
    const-string v0, "1"

    invoke-static {p2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 277
    const-string v3, "sunday"

    goto :goto_0

    .line 278
    :cond_3
    const-string v0, "2"

    invoke-static {p2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    const-string v3, "monday"

    goto :goto_0

    .line 283
    :cond_4
    iget-object v0, p0, Lcom/meizu/flyme/calendar/settings/SettingsActivity;->q:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_5

    .line 284
    iget-object v0, p0, Lcom/meizu/flyme/calendar/settings/SettingsActivity;->q:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 285
    iget-object v0, p0, Lcom/meizu/flyme/calendar/settings/SettingsActivity;->q:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/meizu/flyme/calendar/settings/SettingsActivity;->q:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 287
    iget-object v0, p0, Lcom/meizu/flyme/calendar/settings/SettingsActivity;->q:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 288
    const-string v2, "preference_defaultCalendar"

    invoke-direct {p0, v0}, Lcom/meizu/flyme/calendar/settings/SettingsActivity;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v2, v0}, Lcom/meizu/flyme/calendar/settings/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 290
    :cond_5

    .line 300
    :cond_6
    iget-object v0, p0, Lcom/meizu/flyme/calendar/settings/SettingsActivity;->s:Lcom/meizu/flyme/calendar/settings/CalCheckBoxPreference;

    if-ne p1, v0, :cond_1

    .line 301
    iget-object v2, p0, Lcom/meizu/flyme/calendar/settings/SettingsActivity;->s:Lcom/meizu/flyme/calendar/settings/CalCheckBoxPreference;

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v2, v0}, Lcom/meizu/flyme/calendar/settings/CalCheckBoxPreference;->setChecked(Z)V

    .line 302
    iget-object v0, p0, Lcom/meizu/flyme/calendar/settings/SettingsActivity;->j:Lcom/meizu/flyme/calendar/events/helper/a;

    invoke-virtual {v0}, Lcom/meizu/flyme/calendar/events/helper/a;->b()I

    move-result v0

    iput v0, p0, Lcom/meizu/flyme/calendar/settings/SettingsActivity;->i:I

    .line 303
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 304
    const-string v2, "visible"

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v10

    :goto_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 305
    iget-object v1, p0, Lcom/meizu/flyme/calendar/settings/SettingsActivity;->j:Lcom/meizu/flyme/calendar/events/helper/a;

    iget v2, p0, Lcom/meizu/flyme/calendar/settings/SettingsActivity;->i:I

    sget-object v4, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    const-string v6, "account_name=\"Contact Birthday\" AND account_type=\"LOCAL\""

    const-wide/16 v8, 0x0

    move-object v7, v3

    invoke-virtual/range {v1 .. v9}, Lcom/meizu/flyme/calendar/events/helper/a;->a(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;J)V

    .line 310
    invoke-static {p0}, Lcom/meizu/flyme/calendar/v;->f(Landroid/content/Context;)V

    goto/16 :goto_2

    :cond_7
    move v0, v1

    .line 304
    goto :goto_3
.end method

.method protected onStart()V
    .locals 4

    .prologue
    .line 597
    invoke-super {p0}, Landroid/support/v7/app/ag;->onStart()V

    .line 598
    iget-object v0, p0, Lcom/meizu/flyme/calendar/settings/SettingsActivity;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 599
    iget-object v0, p0, Lcom/meizu/flyme/calendar/settings/SettingsActivity;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/flyme/calendar/settings/CalCheckBoxPreference;

    .line 600
    iget-object v2, p0, Lcom/meizu/flyme/calendar/settings/SettingsActivity;->k:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 603
    :cond_0
    invoke-direct {p0}, Lcom/meizu/flyme/calendar/settings/SettingsActivity;->f()V

    .line 604
    iget-object v0, p0, Lcom/meizu/flyme/calendar/settings/SettingsActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 605
    iget-object v0, p0, Lcom/meizu/flyme/calendar/settings/SettingsActivity;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 606
    iget-object v0, p0, Lcom/meizu/flyme/calendar/settings/SettingsActivity;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 607
    iget-object v0, p0, Lcom/meizu/flyme/calendar/settings/SettingsActivity;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 608
    invoke-direct {p0}, Lcom/meizu/flyme/calendar/settings/SettingsActivity;->g()V

    .line 609
    const/4 v0, 0x0

    .line 610
    invoke-static {}, Lcom/meizu/flyme/calendar/b/a;->a()Lcom/meizu/flyme/calendar/b/a;

    move-result-object v1

    new-instance v2, Lcom/meizu/flyme/calendar/u;

    const-string v3, "Setting"

    invoke-direct {v2, v3, v0}, Lcom/meizu/flyme/calendar/u;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Lcom/meizu/flyme/calendar/b/a;->a(Ljava/lang/Object;)V

    .line 611
    return-void
.end method

.method protected onStop()V
    .locals 4

    .prologue
    .line 614
    invoke-super {p0}, Landroid/support/v7/app/ag;->onStop()V

    .line 615
    const/4 v0, 0x1

    .line 616
    invoke-static {}, Lcom/meizu/flyme/calendar/b/a;->a()Lcom/meizu/flyme/calendar/b/a;

    move-result-object v1

    new-instance v2, Lcom/meizu/flyme/calendar/u;

    const-string v3, "Setting"

    invoke-direct {v2, v3, v0}, Lcom/meizu/flyme/calendar/u;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Lcom/meizu/flyme/calendar/b/a;->a(Ljava/lang/Object;)V

    .line 617
    return-void
.end method
