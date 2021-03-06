// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.config;

public final class FeatureFlags
{
    public static boolean LAUNCHER3_ALL_APPS_PULL_UP;
    public static boolean LAUNCHER3_DIRECT_SCROLL;
    public static boolean LAUNCHER3_DISABLE_ICON_NORMALIZATION;
    public static boolean LAUNCHER3_DISABLE_PINCH_TO_OVERVIEW;
    public static boolean LAUNCHER3_LEGACY_FOLDER_ICON;
    public static boolean LAUNCHER3_LEGACY_WORKSPACE_DND;
    public static boolean LAUNCHER3_NEW_FOLDER_ANIMATION;
    public static boolean LAUNCHER3_PHYSICS;
    public static boolean LAUNCHER3_PROMISE_APPS_IN_ALL_APPS;
    public static boolean LAUNCHER3_SPRING_ICONS;
    public static boolean LAUNCHER3_UPDATE_SOFT_INPUT_MODE;
    public static boolean LAUNCHER3_USE_SYSTEM_DRAG_DRIVER;
    
    static {
        final boolean launcher3_SPRING_ICONS = true;
        FeatureFlags.LAUNCHER3_DISABLE_ICON_NORMALIZATION = false;
        FeatureFlags.LAUNCHER3_LEGACY_WORKSPACE_DND = false;
        FeatureFlags.LAUNCHER3_LEGACY_FOLDER_ICON = false;
        FeatureFlags.LAUNCHER3_USE_SYSTEM_DRAG_DRIVER = false;
        FeatureFlags.LAUNCHER3_DISABLE_PINCH_TO_OVERVIEW = false;
        FeatureFlags.LAUNCHER3_ALL_APPS_PULL_UP = launcher3_SPRING_ICONS;
        FeatureFlags.LAUNCHER3_NEW_FOLDER_ANIMATION = launcher3_SPRING_ICONS;
        FeatureFlags.LAUNCHER3_DIRECT_SCROLL = launcher3_SPRING_ICONS;
        FeatureFlags.LAUNCHER3_UPDATE_SOFT_INPUT_MODE = false;
        FeatureFlags.LAUNCHER3_PROMISE_APPS_IN_ALL_APPS = false;
        FeatureFlags.LAUNCHER3_PHYSICS = launcher3_SPRING_ICONS;
        FeatureFlags.LAUNCHER3_SPRING_ICONS = launcher3_SPRING_ICONS;
    }
}
