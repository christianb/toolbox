/**
 * A ToastMatcher for Android Espresso tests.
 */
class ToastMatcher : TypeSafeMatcher<Root>() {
    override fun describeTo(description: Description) {
        description.appendText("is toast");
    }

    override fun matchesSafely(root: Root): Boolean {
        val type: Int = root.getWindowLayoutParams().get().type
        if (type == WindowManager.LayoutParams.TYPE_TOAST) {
            val windowToken: IBinder = root.getDecorView().getWindowToken()
            val appToken: IBinder = root.getDecorView().getApplicationWindowToken()
            if (windowToken === appToken) {
                // windowToken == appToken means this window isn't contained by any other windows.
                // if it was a window for an activity, it would have TYPE_BASE_APPLICATION.
                return true
            }
        }
        return false
    }

    companion object {
        fun isToast(): Matcher<Root?> {
            return ToastMatcher()
        }
    }
}

// how to use:
onView(withText("toast-message")).inRoot(ToastMatcher.isToast()).check(matches(isDisplayed()));