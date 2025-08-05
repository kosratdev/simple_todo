import com.android.build.gradle.AppExtension

val android = project.extensions.getByType(AppExtension::class.java)

android.apply {
    flavorDimensions("flavor-type")

    productFlavors {
        create("dev") {
            dimension = "flavor-type"
            applicationId = "dev.kosrat.simpletodo.dev"
            resValue(type = "string", name = "app_name", value = "DEV Todo")
        }
        create("prod") {
            dimension = "flavor-type"
            applicationId = "dev.kosrat.simpletodo"
            resValue(type = "string", name = "app_name", value = "Simple Todo")
        }
    }
}