package com.iqmsoft.grails.boot

import com.iqmsoft.grails.boot.Book;

import grails.transaction.Transactional;

class ReadingListController {

    def index() {
        respond Book.list(params), model:[book: new Book()]
    }

    @Transactional
    def save(Book book) {
        book.reader = "test1"

        book.save flush:true

        redirect(action: "index")
    }
}
