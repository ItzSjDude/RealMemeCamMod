.class Lcom/oplus/camera/sticker/ui/h$c;
.super Landroidx/recyclerview/widget/RecyclerView$h;
.source "StickerMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/sticker/ui/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/sticker/ui/h;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:Landroid/app/Activity;

.field private k:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Lcom/oplus/camera/sticker/ui/h;Landroid/app/Activity;III)V
    .locals 1

    .line 1337
    iput-object p1, p0, Lcom/oplus/camera/sticker/ui/h$c;->a:Lcom/oplus/camera/sticker/ui/h;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$h;-><init>()V

    const/4 v0, 0x0

    .line 1273
    iput v0, p0, Lcom/oplus/camera/sticker/ui/h$c;->b:I

    .line 1274
    iput v0, p0, Lcom/oplus/camera/sticker/ui/h$c;->c:I

    .line 1275
    iput v0, p0, Lcom/oplus/camera/sticker/ui/h$c;->d:I

    .line 1276
    iput v0, p0, Lcom/oplus/camera/sticker/ui/h$c;->e:I

    .line 1277
    iput v0, p0, Lcom/oplus/camera/sticker/ui/h$c;->f:I

    .line 1278
    iput v0, p0, Lcom/oplus/camera/sticker/ui/h$c;->g:I

    .line 1279
    iput v0, p0, Lcom/oplus/camera/sticker/ui/h$c;->h:I

    .line 1280
    iput v0, p0, Lcom/oplus/camera/sticker/ui/h$c;->i:I

    const/4 v0, 0x0

    .line 1281
    iput-object v0, p0, Lcom/oplus/camera/sticker/ui/h$c;->j:Landroid/app/Activity;

    .line 1282
    iput-object v0, p0, Lcom/oplus/camera/sticker/ui/h$c;->k:Landroid/graphics/Paint;

    .line 1338
    iput-object p2, p0, Lcom/oplus/camera/sticker/ui/h$c;->j:Landroid/app/Activity;

    .line 1339
    iput p3, p0, Lcom/oplus/camera/sticker/ui/h$c;->b:I

    .line 1340
    iput p4, p0, Lcom/oplus/camera/sticker/ui/h$c;->c:I

    .line 1341
    iput p5, p0, Lcom/oplus/camera/sticker/ui/h$c;->e:I

    .line 1342
    invoke-static {p1}, Lcom/oplus/camera/sticker/ui/h;->v(Lcom/oplus/camera/sticker/ui/h;)Z

    move-result p1

    const p2, 0x7f070b01

    if-eqz p1, :cond_0

    .line 1343
    iget-object p1, p0, Lcom/oplus/camera/sticker/ui/h$c;->j:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    goto :goto_0

    .line 1344
    :cond_0
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result p1

    iget-object p3, p0, Lcom/oplus/camera/sticker/ui/h$c;->j:Landroid/app/Activity;

    .line 1345
    invoke-virtual {p3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    sub-int/2addr p1, p2

    :goto_0
    iput p1, p0, Lcom/oplus/camera/sticker/ui/h$c;->f:I

    .line 1346
    iget-object p1, p0, Lcom/oplus/camera/sticker/ui/h$c;->j:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070b02

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/sticker/ui/h$c;->g:I

    .line 1347
    iget-object p1, p0, Lcom/oplus/camera/sticker/ui/h$c;->j:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070b03

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/sticker/ui/h$c;->h:I

    .line 1348
    iget-object p1, p0, Lcom/oplus/camera/sticker/ui/h$c;->j:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070b00

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/sticker/ui/h$c;->i:I

    .line 1349
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/oplus/camera/sticker/ui/h$c;->k:Landroid/graphics/Paint;

    .line 1350
    iget-object p1, p0, Lcom/oplus/camera/sticker/ui/h$c;->k:Landroid/graphics/Paint;

    iget-object p2, p0, Lcom/oplus/camera/sticker/ui/h$c;->j:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f06009a

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1351
    iget-object p1, p0, Lcom/oplus/camera/sticker/ui/h$c;->k:Landroid/graphics/Paint;

    iget p0, p0, Lcom/oplus/camera/sticker/ui/h$c;->h:I

    int-to-float p0, p0

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .line 1355
    iput p1, p0, Lcom/oplus/camera/sticker/ui/h$c;->d:I

    return-void
.end method

.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$t;)V
    .locals 1

    .line 1286
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$h;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$t;)V

    const/4 p3, 0x0

    .line 1288
    iput p3, p1, Landroid/graphics/Rect;->top:I

    .line 1289
    iput p3, p1, Landroid/graphics/Rect;->bottom:I

    .line 1291
    iget p4, p0, Lcom/oplus/camera/sticker/ui/h$c;->d:I

    const/4 v0, 0x6

    if-le p4, v0, :cond_5

    .line 1292
    iget-object p4, p0, Lcom/oplus/camera/sticker/ui/h$c;->a:Lcom/oplus/camera/sticker/ui/h;

    invoke-static {p4}, Lcom/oplus/camera/sticker/ui/h;->v(Lcom/oplus/camera/sticker/ui/h;)Z

    move-result p4

    if-eqz p4, :cond_2

    .line 1293
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    if-nez p4, :cond_0

    .line 1294
    iput p3, p1, Landroid/graphics/Rect;->right:I

    .line 1295
    iget p0, p0, Lcom/oplus/camera/sticker/ui/h$c;->c:I

    iput p0, p1, Landroid/graphics/Rect;->left:I

    goto/16 :goto_0

    .line 1296
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iget p4, p0, Lcom/oplus/camera/sticker/ui/h$c;->d:I

    add-int/lit8 p4, p4, -0x1

    if-ne p2, p4, :cond_1

    .line 1297
    iget p2, p0, Lcom/oplus/camera/sticker/ui/h$c;->c:I

    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 1298
    iget p0, p0, Lcom/oplus/camera/sticker/ui/h$c;->b:I

    iput p0, p1, Landroid/graphics/Rect;->left:I

    goto/16 :goto_0

    .line 1300
    :cond_1
    iput p3, p1, Landroid/graphics/Rect;->right:I

    .line 1301
    iget p0, p0, Lcom/oplus/camera/sticker/ui/h$c;->b:I

    iput p0, p1, Landroid/graphics/Rect;->left:I

    goto/16 :goto_0

    .line 1304
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    if-nez p4, :cond_3

    .line 1305
    iput p3, p1, Landroid/graphics/Rect;->left:I

    .line 1306
    iget p0, p0, Lcom/oplus/camera/sticker/ui/h$c;->c:I

    iput p0, p1, Landroid/graphics/Rect;->right:I

    goto/16 :goto_0

    .line 1307
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iget p4, p0, Lcom/oplus/camera/sticker/ui/h$c;->d:I

    add-int/lit8 p4, p4, -0x1

    if-ne p2, p4, :cond_4

    .line 1308
    iget p2, p0, Lcom/oplus/camera/sticker/ui/h$c;->c:I

    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 1309
    iget p0, p0, Lcom/oplus/camera/sticker/ui/h$c;->b:I

    iput p0, p1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 1311
    :cond_4
    iput p3, p1, Landroid/graphics/Rect;->left:I

    .line 1312
    iget p0, p0, Lcom/oplus/camera/sticker/ui/h$c;->b:I

    iput p0, p1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 1316
    :cond_5
    iget-object p4, p0, Lcom/oplus/camera/sticker/ui/h$c;->a:Lcom/oplus/camera/sticker/ui/h;

    invoke-static {p4}, Lcom/oplus/camera/sticker/ui/h;->v(Lcom/oplus/camera/sticker/ui/h;)Z

    move-result p4

    if-eqz p4, :cond_7

    .line 1317
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    if-nez p4, :cond_6

    .line 1318
    iput p3, p1, Landroid/graphics/Rect;->right:I

    .line 1319
    iget p0, p0, Lcom/oplus/camera/sticker/ui/h$c;->c:I

    iput p0, p1, Landroid/graphics/Rect;->left:I

    goto :goto_0

    .line 1320
    :cond_6
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-eqz p2, :cond_9

    .line 1321
    iput p3, p1, Landroid/graphics/Rect;->right:I

    .line 1322
    iget p0, p0, Lcom/oplus/camera/sticker/ui/h$c;->b:I

    iput p0, p1, Landroid/graphics/Rect;->left:I

    goto :goto_0

    .line 1325
    :cond_7
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    if-nez p4, :cond_8

    .line 1326
    iput p3, p1, Landroid/graphics/Rect;->left:I

    .line 1327
    iget p0, p0, Lcom/oplus/camera/sticker/ui/h$c;->c:I

    iput p0, p1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 1328
    :cond_8
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-eqz p2, :cond_9

    .line 1329
    iput p3, p1, Landroid/graphics/Rect;->left:I

    .line 1330
    iget p0, p0, Lcom/oplus/camera/sticker/ui/h$c;->b:I

    iput p0, p1, Landroid/graphics/Rect;->right:I

    :cond_9
    :goto_0
    return-void
.end method
