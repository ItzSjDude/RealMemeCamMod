.class public final synthetic Lcom/oplus/statistics/-$$Lambda$d$8TYiFTPyYebNoDA609y1Okhs9ls;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/oplus/statistics/f/e;


# instance fields
.field private final synthetic f$0:Lcom/oplus/statistics/b/d;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/oplus/statistics/b/d;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/statistics/-$$Lambda$d$8TYiFTPyYebNoDA609y1Okhs9ls;->f$0:Lcom/oplus/statistics/b/d;

    iput p2, p0, Lcom/oplus/statistics/-$$Lambda$d$8TYiFTPyYebNoDA609y1Okhs9ls;->f$1:I

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/oplus/statistics/-$$Lambda$d$8TYiFTPyYebNoDA609y1Okhs9ls;->f$0:Lcom/oplus/statistics/b/d;

    iget p0, p0, Lcom/oplus/statistics/-$$Lambda$d$8TYiFTPyYebNoDA609y1Okhs9ls;->f$1:I

    invoke-static {v0, p0}, Lcom/oplus/statistics/d;->lambda$onCommon$1(Lcom/oplus/statistics/b/d;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
