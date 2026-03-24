package android.accounts;

import android.app.Activity;
import android.app.admin.DevicePolicyManager;
import android.app.admin.DevicePolicyResources;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import com.android.internal.R;
import java.util.function.Supplier;

/* loaded from: classes.dex */
public class CantAddAccountActivity extends Activity {
    public static final String EXTRA_ERROR_CODE = "android.accounts.extra.ERROR_CODE";

    @Override // android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.app_not_authorized);
        TextView view = (TextView) findViewById(R.id.description);
        String text = ((DevicePolicyManager) getSystemService(DevicePolicyManager.class)).getResources().getString(DevicePolicyResources.Strings.Core.CANT_ADD_ACCOUNT_MESSAGE, new Supplier() { // from class: android.accounts.CantAddAccountActivity$$ExternalSyntheticLambda0
            @Override // java.util.function.Supplier
            public final Object get() {
                return this.f$0.m42lambda$onCreate$0$androidaccountsCantAddAccountActivity();
            }
        });
        view.setText(text);
    }

    /* renamed from: lambda$onCreate$0$android-accounts-CantAddAccountActivity, reason: not valid java name */
    /* synthetic */ String m42lambda$onCreate$0$androidaccountsCantAddAccountActivity() {
        return getString(R.string.error_message_change_not_allowed);
    }

    public void onCancelButtonClicked(View view) {
        onBackPressed();
    }
}
