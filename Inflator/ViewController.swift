//
//  ViewController.swift
//  Inflator
//
//  Created by Jacob Bijani on 4/9/16.
//  Copyright © 2016 Totally Viable. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: Properties

    @IBOutlet weak var OutputAmount: UILabel!
    @IBOutlet weak var InputAmount: UITextField!
    @IBOutlet weak var YearPast: UITextField!
    
    let formatter = NSNumberFormatter()
    let YearCurrent = 2015
    
    // MARK: Methods
    
    @IBAction func SubmitButton(sender: AnyObject) {
        let amount = (InputAmount.text! as NSString).doubleValue
        let year = (YearPast.text! as NSString).integerValue
        
        guard let inflatedAmountForYear = inflate(amount, fromYear: year) else {
            let alertController = UIAlertController(title: "Invalid Year", message:
                "Invalid year, must be from 1800-2015", preferredStyle: UIAlertControllerStyle.Alert)
            alertController.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.Default,handler: nil))
            self.presentViewController(alertController, animated: true, completion: nil)
            
            return
        }
        
        formatter.numberStyle = NSNumberFormatterStyle.CurrencyStyle
        
        OutputAmount.text = formatter.stringFromNumber(inflatedAmountForYear)
    }
    
     override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func cpiForYear(year: Int) -> Double? {
        // https://www.minneapolisfed.org/community/teaching-aids/cpi-calculator-information/consumer-price-index-1800
        
        let cpi: [Int: Double!] = [
            1800: 51,
            1801: 50,
            1802: 43,
            1803: 45,
            1804: 45,
            1805: 45,
            1806: 47,
            1807: 44,
            1808: 48,
            1809: 47,
            1810: 47,
            1811: 50,
            1812: 51,
            1813: 58,
            1814: 63,
            1815: 55,
            1816: 51,
            1817: 48,
            1818: 46,
            1819: 46,
            1820: 42,
            1821: 40,
            1822: 40,
            1823: 36,
            1824: 33,
            1825: 34,
            1826: 34,
            1827: 34,
            1828: 33,
            1829: 32,
            1830: 32,
            1831: 32,
            1832: 30,
            1833: 29,
            1834: 30,
            1835: 31,
            1836: 33,
            1837: 34,
            1838: 32,
            1839: 32,
            1840: 30,
            1841: 31,
            1842: 29,
            1843: 28,
            1844: 28,
            1845: 28,
            1846: 27,
            1847: 28,
            1848: 26,
            1849: 25,
            1850: 25,
            1851: 25,
            1852: 25,
            1853: 25,
            1854: 27,
            1855: 28,
            1856: 27,
            1857: 28,
            1858: 26,
            1859: 27,
            1860: 27,
            1861: 27,
            1862: 30,
            1863: 37,
            1864: 47,
            1865: 46,
            1866: 44,
            1867: 42,
            1868: 40,
            1869: 40,
            1870: 38,
            1871: 36,
            1872: 36,
            1873: 36,
            1874: 34,
            1875: 33,
            1876: 32,
            1877: 32,
            1878: 29,
            1879: 28,
            1880: 29,
            1881: 29,
            1882: 29,
            1883: 28,
            1884: 27,
            1885: 27,
            1886: 27,
            1887: 27,
            1888: 27,
            1889: 27,
            1890: 27,
            1891: 27,
            1892: 27,
            1893: 27,
            1894: 26,
            1895: 25,
            1896: 25,
            1897: 25,
            1898: 25,
            1899: 25,
            1900: 25,
            1901: 25,
            1902: 26,
            1903: 27,
            1904: 27,
            1905: 27,
            1906: 27,
            1907: 28,
            1908: 27,
            1909: 27,
            1910: 28,
            1911: 28,
            1912: 29,
            1913: 29.7,
            1914: 30.1,
            1915: 30.4,
            1916: 32.7,
            1917: 38.5,
            1918: 45.2,
            1919: 52.1,
            1920: 60.2,
            1921: 53.6,
            1922: 50.3,
            1923: 51.2,
            1924: 51.5,
            1925: 52.7,
            1926: 53.2,
            1927: 52.2,
            1928: 51.6,
            1929: 51.6,
            1930: 50.2,
            1931: 45.7,
            1932: 41.0,
            1933: 38.9,
            1934: 40.2,
            1935: 41.2,
            1936: 41.7,
            1937: 43.2,
            1938: 42.3,
            1939: 41.8,
            1940: 42.1,
            1941: 44.2,
            1942: 49.1,
            1943: 52.0,
            1944: 52.9,
            1945: 54.1,
            1946: 58.6,
            1947: 67.1,
            1948: 72.2,
            1949: 71.5,
            1950: 72.3,
            1951: 78.0,
            1952: 79.8,
            1953: 80.4,
            1954: 80.7,
            1955: 80.5,
            1956: 81.7,
            1957: 84.4,
            1958: 86.7,
            1959: 87.6,
            1960: 88.9,
            1961: 89.8,
            1962: 90.9,
            1963: 92.0,
            1964: 93.2,
            1965: 94.7,
            1966: 97.5,
            1967: 100.2,
            1968: 104.5,
            1969: 110.2,
            1970: 116.7,
            1971: 121.7,
            1972: 125.7,
            1973: 133.4,
            1974: 148.2,
            1975: 161.7,
            1976: 171.0,
            1977: 182.1,
            1978: 196.0,
            1979: 218.1,
            1980: 247.6,
            1981: 273.2,
            1982: 290.0,
            1983: 299.3,
            1984: 312.2,
            1985: 323.2,
            1986: 329.4,
            1987: 341.4,
            1988: 355.4,
            1989: 372.5,
            1990: 392.6,
            1991: 409.3,
            1992: 421.7,
            1993: 434.1,
            1994: 445.4,
            1995: 457.9,
            1996: 471.3,
            1997: 482.4,
            1998: 489.8,
            1999: 500.6,
            2000: 517.5,
            2001: 532.1,
            2002: 540.5,
            2003: 552.8,
            2004: 567.6,
            2005: 586.9,
            2006: 605.8,
            2007: 623.1,
            2008: 647.0,
            2009: 644.7,
            2010: 655.3,
            2011: 676.0,
            2012: 689.9,
            2013: 700.0,
            2014: 711.4,
            2015: 711.1
        ]
        
        // return nil if year isn't in our CPI
        guard cpi[year] != nil else {
            return nil
        }
        
        return cpi[year];
    }
    
    func inflate(amountPast: Double, fromYear: Int) -> Double? {
        guard let cpiPast = cpiForYear(fromYear) else {
            return nil
        }
        
        guard let cpiCurrent = cpiForYear(YearCurrent) else {
            return nil
        }
        
        return amountPast * (cpiCurrent / cpiPast)
    }
}

