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
    
    @IBAction func SubmitButton(sender: AnyObject) {
        let amount = (InputAmount.text! as NSString).doubleValue
        let year = (YearPast.text! as NSString).integerValue
        
        OutputAmount.text = String(inflate(amount, year: year))
    }
    
    // MARK: Methods
   
     override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func inflate(amount: Double, year: Int) -> Double {
        let cpi = [
            1901:  1.0,
            1902:  2.0,
            1903:  3.0,
            1904:  4.0,
            1905:  5.0,
            1906:  6.0,
            1907:  7.0,
            1908:  8.0,
            1909:  9.0,
            1910:  10.0,
            1911:  11.0,
            1912:  12.0,
            1913:  13.0,
            1914:  14.0,
            1915:  15.0,
            1916:  16.0,
            1917:  17.0,
            1918:  18.0,
            1919:  19.0,
            1920:  20.0,
            1921:  21.0,
            1922:  22.0,
            1923:  23.0,
            1924:  24.0,
            1925:  25.0,
            1926:  26.0,
            1927:  27.0,
            1928:  28.0,
            1929:  29.0,
            1930:  30.0,
            1931:  31.0,
            1932:  32.0,
            1933:  33.0,
            1934:  34.0,
            1935:  35.0,
            1936:  36.0,
            1937:  37.0,
            1938:  38.0,
            1939:  39.0,
            1940:  40.0,
            1941:  41.0,
            1942:  42.0,
            1943:  43.0,
            1944:  44.0,
            1945:  45.0,
            1946:  46.0,
            1947:  47.0,
            1948:  48.0,
            1949:  49.0,
            1950:  50.0,
            1951:  51.0,
            1952:  52.0,
            1953:  53.0,
            1954:  54.0,
            1955:  55.0,
            1956:  56.0,
            1957:  57.0,
            1958:  58.0,
            1959:  59.0,
            1960:  60.0,
            1961:  61.0,
            1962:  62.0,
            1963:  63.0,
            1964:  64.0,
            1965:  65.0,
            1966:  66.0,
            1967:  67.0,
            1968:  68.0,
            1969:  69.0,
            1970:  70.0,
            1971:  71.0,
            1972:  72.0,
            1973:  73.0,
            1974:  74.0,
            1975:  75.0,
            1976:  76.0,
            1977:  77.0,
            1978:  78.0,
            1979:  79.0,
            1980:  80.0,
            1981:  81.0,
            1982:  82.0,
            1983:  83.0,
            1984:  84.0,
            1985:  85.0,
            1986:  86.0,
            1987:  87.0,
            1988:  88.0,
            1989:  89.0,
            1990:  90.0,
            1991:  91.0,
            1992:  92.0,
            1993:  93.0,
            1994:  94.0,
            1995:  95.0,
            1996:  96.0,
            1997:  97.0,
            1998:  98.0,
            1999:  99.0,
            2000:  100.0
        ]
        
        return amount * cpi[year]!;
    }
}

