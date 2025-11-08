.class Lcom/coui/appcompat/preference/COUIMarkWithDividerPreference$1;
.super Ljava/lang/Object;
.source "COUIMarkWithDividerPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/preference/COUIMarkWithDividerPreference;->a(Landroidx/preference/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coui/appcompat/preference/COUIMarkWithDividerPreference;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/preference/COUIMarkWithDividerPreference;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIMarkWithDividerPreference$1;->a:Lcom/coui/appcompat/preference/COUIMarkWithDividerPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 48
    iget-object p1, p0, Lcom/coui/appcompat/preference/COUIMarkWithDividerPreference$1;->a:Lcom/coui/appcompat/preference/COUIMarkWithDividerPreference;

    invoke-static {p1}, Lcom/coui/appcompat/preference/COUIMarkWithDividerPreference;->a(Lcom/coui/appcompat/preference/COUIMarkWithDividerPreference;)Lcom/coui/appcompat/preference/COUIMarkWithDividerPreference$a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 49
    iget-object p0, p0, Lcom/coui/appcompat/preference/COUIMarkWithDividerPreference$1;->a:Lcom/coui/appcompat/preference/COUIMarkWithDividerPreference;

    invoke-static {p0}, Lcom/coui/appcompat/preference/COUIMarkWithDividerPreference;->a(Lcom/coui/appcompat/preference/COUIMarkWithDividerPreference;)Lcom/coui/appcompat/preference/COUIMarkWithDividerPreference$a;

    move-result-object p0

    invoke-interface {p0}, Lcom/coui/appcompat/preference/COUIMarkWithDividerPreference$a;->a()V

    :cond_0
    return-void
.end method
