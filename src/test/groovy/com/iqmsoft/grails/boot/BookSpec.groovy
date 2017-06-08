package com.iqmsoft.grails.boot

import com.iqmsoft.grails.boot.Book;

import grails.test.mixin.TestFor
import spock.lang.Specification


@TestFor(Book)
class BookSpec extends Specification {

    def setup() {
    }

    def cleanup() {
    }

    void "test something"() {
        expect:"fix me"
            true == true
    }
}
