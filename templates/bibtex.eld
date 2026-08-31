bibtex-mode

(st "@set{" (p "title") "," n> "entryset = {" (p "entryset") "}" n "}")
(xd "@xdata{ " (p "title") "," n> q n "}")

(bibart "@article{" (p "key") "," n>
         "author = {" (p "author") "}," n>
         "title = {" (p "title") "}," n>
         "journal = {" (p "journal") "}," n>
         "year = {" (p "year") "}," n> q n "}")
(bk "@book{" (p "key") "," n>
      "author = {" (p "author") "}," n>
      "title = {" (p "title") "}," n>
      "publisher = {" (p "publisher") "}," n>
      "year = {" (p "year") "}," n> q n "}")
(bkinbk "@bookinbook{" (p "key") "," n>
            "author = {" (p "author") "}," n>
            "title = {" (p "title") "}," n>
            "chapter = {" (p "chapter") "}," n>
            "publisher = {" (p "publisher") "}," n>
            "year = {" (p "year") "}," n> q n "}")
(bkl "@booklet{" (p "key") "," n>
         "title = {" (p "title") "}," n> q n "}")
(clctn "@collection{" (p "key") "," n>
            "editor = {" (p "editor") "}," n>
            "title = {" (p "title") "}," n>
            "year = {" (p "year") "}," n> q n "}")
(cnf "@conference{" (p "key") "," n>
            "author = {" (p "author") "}," n>
            "title = {" (p "title") "}," n>
            "booktitle = {" (p "booktitle") "}," n>
            "year = {" (p "year") "}," n> q n "}")
(dset "@dataset{" (p "key") "," n>
         "title = {" (p "title") "}," n>
         "year = {" (p "year") "}," n> q n "}")
(elc "@electronic{" (p "key") "," n>
            "author = {" (p "author") "}," n>
            "title = {" (p "title") "}," n>
            "year = {" (p "year") "}," n>
            "url = {" (p "url") "}," n> q n "}")
(inbk "@inbook{" (p "key") "," n>
        "author = {" (p "author") "}," n>
        "title = {" (p "title") "}," n>
        "chapter = {" (p "chapter") "}," n>
        "publisher = {" (p "publisher") "}," n>
        "year = {" (p "year") "}," n> q n "}")
(inclctn "@incollection{" (p "key") "," n>
              "author = {" (p "author") "}," n>
              "title = {" (p "title") "}," n>
              "booktitle = {" (p "booktitle") "}," n>
              "publisher = {" (p "publisher") "}," n>
              "year = {" (p "year") "}," n> q n "}")
(inprc "@inproceedings{" (p "key") "," n>
               "author = {" (p "author") "}," n>
               "title = {" (p "title") "}," n>
               "booktitle = {" (p "booktitle") "}," n>
               "year = {" (p "year") "}," n> q n "}")
(inref "@inreference{" (p "key") "," n>
             "author = {" (p "author") "}," n>
             "title = {" (p "title") "}," n>
             "booktitle = {" (p "booktitle") "}," n>
             "publisher = {" (p "publisher") "}," n>
             "year = {" (p "year") "}," n> q n "}")
(mnl "@manual{" (p "key") "," n>
        "title = {" (p "title") "}," n> q n "}")
(masterths "@masterthesis{" (p "key") "," n>
              "author = {" (p "author") "}," n>
              "title = {" (p "title") "}," n>
              "school = {" (p "school") "}," n>
              "year = {" (p "year") "}," n> q n "}")
(msc "@misc{" (p "key") "," n> q n "}")
(mvbk "@mvbook{" (p "key") "," n>
        "author = {" (p "author") "}," n>
        "title = {" (p "title") "}," n>
        "year = {" (p "year") "}," n> q n "}")
(mvclctn "@mvcollection{" (p "key") "," n>
              "editor = {" (p "editor") "}," n>
              "title = {" (p "title") "}," n>
              "year = {" (p "year") "}," n> q n "}")
(mvref "@mvreference{" (p "key") "," n>
             "editor = {" (p "editor") "}," n>
             "title = {" (p "title") "}," n>
             "year = {" (p "year") "}," n> q n "}")
(onl "@online{" (p "key") "," n>
        "author = {" (p "author") "}," n>
        "title = {" (p "title") "}," n>
        "year = {" (p "year") "}," n>
        "url = {" (p "url") "}," n> q n "}")
(ptn "@patent{" (p "key") "," n>
        "author = {" (p "author") "}," n>
        "title = {" (p "title") "}," n>
        "number = {" (p "number") "}," n>
        "year = {" (p "year") "}," n> q n "}")
(prd "@periodical{" (p "key") "," n>
            "editor = {" (p "editor") "}," n>
            "title = {" (p "title") "}," n>
            "year = {" (p "year") "}," n> q n "}")
(phdths "@phdthesis{" (p "key") "," n>
           "author = {" (p "author") "}," n>
           "title = {" (p "title") "}," n>
           "school = {" (p "school") "}," n>
           "year = {" (p "year") "}," n> q n "}")
(prc "@proceedings{" (p "key") "," n>
             "title = {" (p "title") "}," n>
             "year = {" (p "year") "}," n> q n "}")
(bibref "@reference{" (p "key") "," n>
           "editor = {" (p "editor") "}," n>
           "title = {" (p "title") "}," n>
           "year = {" (p "year") "}," n> q n "}")
(rpt "@report{" (p "key") "," n>
        "author = {" (p "author") "}," n>
        "title = {" (p "title") "}," n>
        "institution = {" (p "institution") "}," n>
        "year = {" (p "year") "}," n> q n "}")
(sft "@software{" (p "key") "," n> q n "}")
(suppbk "@suppbook{" (p "key") "," n>
          "author = {" (p "author") "}," n>
          "title = {" (p "title") "}," n>
          "chapter = {" (p "chapter") "}," n>
          "publisher = {" (p "publisher") "}," n>
          "year = {" (p "year") "}," n> q n "}")
(suppclctn "@suppcollection{" (p "key") "," n>
                "author = {" (p "author") "}," n>
                "title = {" (p "title") "}," n>
                "booktitle = {" (p "booktitle") "}," n>
                "publisher = {" (p "publisher") "}," n>
                "year = {" (p "year") "}," n> q n "}")
(suppprd "@suppperiodical{" (p "key") "," n>
                "author = {" (p "author") "}," n>
                "title = {" (p "title") "}," n>
                "journal = {" (p "journal") "}," n>
                "year = {" (p "year") "}," n> q n "}")
(techrpt "@techreport{" (p "key") "," n>
            "author = {" (p "author") "}," n>
            "title = {" (p "title") "}," n>
            "institution = {" (p "institution") "}," n>
            "year = {" (p "year") "}," n> q n "}")
(ths "@thesis{" (p "key") "," n>
        "author = {" (p "author") "}," n>
        "title = {" (p "title") "}," n>
        "school = {" (p "school") "}," n>
        "year = {" (p "year") "}," n> q n "}")
(unpub "@unpublished{" (p "key") "," n>
             "author = {" (p "author") "}," n>
             "title = {" (p "title") "}," n>
             "note = {" (p "note") "}," n> q n "}")
