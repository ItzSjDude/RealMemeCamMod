.class Lcom/coui/appcompat/preference/COUISwitchPreference$a;
.super Ljava/lang/Object;
.source "COUISwitchPreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/preference/COUISwitchPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/coui/appcompat/preference/COUISwitchPreference;


# direct methods
.method private constructor <init>(Lcom/coui/appcompat/preference/COUISwitchPreference;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/coui/appcompat/preference/COUISwitchPreference$a;->a:Lcom/coui/appcompat/preference/COUISwitchPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/coui/appcompat/preference/COUISwitchPreference;Lcom/coui/appcompat/preference/COUISwitchPreference$1;)V
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Lcom/coui/appcompat/preference/COUISwitchPreference$a;-><init>(Lcom/coui/appcompat/preference/COUISwitchPreference;)V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/coui/appcompat/preference/COUISwitchPreference$a;->a:Lcom/coui/appcompat/preference/COUISwitchPreference;

    invoke-virtual {v0}, Lcom/coui/appcompat/preference/COUISwitchPreference;->b()Z

    move-result v0

    if-ne v0, p2, :cond_0

    return-void

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/preference/COUISwitchPreference$a;->a:Lcom/coui/appcompat/preference/COUISwitchPreference;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coui/appcompat/preference/COUISwitchPreference;->a(Lcom/coui/appcompat/preference/COUISwitchPreference;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    xor-int/lit8 p0, p2, 0x1

    .line 87
    invoke-virtual {p1, p0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    return-void

    .line 91
    :cond_1
    iget-object p0, p0, Lcom/coui/appcompat/preference/COUISwitchPreference$a;->a:Lcom/coui/appcompat/preference/COUISwitchPreference;

    invoke-virtual {p0, p2}, Lcom/coui/appcompat/preference/COUISwitchPreference;->e(Z)V

    return-void
.end method
