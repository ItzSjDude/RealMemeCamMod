.class public Lcom/oplus/ocs/base/common/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/app/PendingIntent;

.field private b:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 22
    invoke-direct {p0, p1, v0}, Lcom/oplus/ocs/base/common/a;-><init>(ILandroid/app/PendingIntent;)V

    return-void
.end method

.method protected constructor <init>(ILandroid/app/PendingIntent;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput p1, p0, Lcom/oplus/ocs/base/common/a;->b:I

    .line 27
    iput-object p2, p0, Lcom/oplus/ocs/base/common/a;->a:Landroid/app/PendingIntent;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 52
    invoke-static {p0}, Lcom/oplus/ocs/base/b/e;->a(Ljava/lang/Object;)Lcom/oplus/ocs/base/b/e$a;

    move-result-object v0

    iget p0, p0, Lcom/oplus/ocs/base/common/a;->b:I

    invoke-static {p0}, Lcom/oplus/ocs/base/common/a/a;->a(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "statusCode"

    invoke-virtual {v0, v1, p0}, Lcom/oplus/ocs/base/b/e$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/oplus/ocs/base/b/e$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/ocs/base/b/e$a;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
