.class public Lcom/coui/appcompat/dialog/panel/c;
.super Ljava/lang/Object;
.source "COUIListBottomSheetDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/dialog/panel/c$a;
    }
.end annotation


# instance fields
.field private a:Lcom/coui/appcompat/dialog/panel/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/coui/appcompat/dialog/panel/c;)Lcom/coui/appcompat/dialog/panel/b;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/coui/appcompat/dialog/panel/c;->a:Lcom/coui/appcompat/dialog/panel/b;

    return-object p0
.end method

.method static synthetic a(Lcom/coui/appcompat/dialog/panel/c;Lcom/coui/appcompat/dialog/panel/b;)Lcom/coui/appcompat/dialog/panel/b;
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/coui/appcompat/dialog/panel/c;->a:Lcom/coui/appcompat/dialog/panel/b;

    return-object p1
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 421
    iget-object p0, p0, Lcom/coui/appcompat/dialog/panel/c;->a:Lcom/coui/appcompat/dialog/panel/b;

    if-eqz p0, :cond_0

    .line 422
    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/panel/b;->dismiss()V

    :cond_0
    return-void
.end method
