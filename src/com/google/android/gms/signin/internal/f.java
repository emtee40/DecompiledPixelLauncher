// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.signin.internal;

import java.util.List;
import com.google.android.gms.common.internal.safeparcel.zza$zza;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.a;
import android.os.Parcel;
import android.os.Parcelable$Creator;

public class f implements Parcelable$Creator
{
    static void Qc(final CheckServerAuthResult checkServerAuthResult, final Parcel parcel, final int n) {
        final int ey = a.eY(parcel);
        a.fj(parcel, 1, checkServerAuthResult.JP);
        a.fa(parcel, 2, checkServerAuthResult.JQ);
        a.fc(parcel, 3, checkServerAuthResult.JR, false);
        a.fe(parcel, ey);
    }
    
    public CheckServerAuthResult Qd(final Parcel parcel) {
        boolean fx = false;
        final int fj = b.fJ(parcel);
        List fz = null;
        int fn = 0;
        while (parcel.dataPosition() < fj) {
            final int fs = b.fS(parcel);
            switch (b.ga(fs)) {
                default: {
                    b.fA(parcel, fs);
                    continue;
                }
                case 1: {
                    fn = b.fN(parcel, fs);
                    continue;
                }
                case 2: {
                    fx = b.fX(parcel, fs);
                    continue;
                }
                case 3: {
                    fz = b.fZ(parcel, fs, Scope.CREATOR);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == fj) {
            return new CheckServerAuthResult(fn, fx, fz);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(fj).toString(), parcel);
    }
    
    public CheckServerAuthResult[] Qe(final int n) {
        return new CheckServerAuthResult[n];
    }
}