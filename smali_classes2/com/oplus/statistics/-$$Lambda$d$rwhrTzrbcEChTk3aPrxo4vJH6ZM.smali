.class public final synthetic Lcom/oplus/statistics/-$$Lambda$d$rwhrTzrbcEChTk3aPrxo4vJH6ZM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/oplus/statistics/f/e;


# instance fields
.field private final synthetic f$0:I

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/oplus/statistics/-$$Lambda$d$rwhrTzrbcEChTk3aPrxo4vJH6ZM;->f$0:I

    iput p2, p0, Lcom/oplus/statistics/-$$Lambda$d$rwhrTzrbcEChTk3aPrxo4vJH6ZM;->f$1:I

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/oplus/statistics/-$$Lambda$d$rwhrTzrbcEChTk3aPrxo4vJH6ZM;->f$0:I

    iget p0, p0, Lcom/oplus/statistics/-$$Lambda$d$rwhrTzrbcEChTk3aPrxo4vJH6ZM;->f$1:I

    invoke-static {v0, p0}, Lcom/oplus/statistics/d;->lambda$onDynamicEvent$13(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
