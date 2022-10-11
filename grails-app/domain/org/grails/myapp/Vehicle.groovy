package org.grails.myapp

@SuppressWarnings('GrailsDomainReservedSqlKeywordName')
class Vehicle {

    String name
    Make make
    Model model
    Integer year

    static constraints = {
        name maxSize: 255
        year min: 1900
    }
}
