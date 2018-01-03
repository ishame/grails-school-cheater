package scheater.core.util

import grails.util.Holders
import groovy.transform.CompileStatic

@CompileStatic
class PropertyUtils {
    private PropertyUtils() {}

    static String loadProperty(String key) {
        Holders.getConfig().getProperty(key)
    }
}
