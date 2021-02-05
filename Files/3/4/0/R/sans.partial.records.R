sans.partial.records <- function ( X , isMissing )
        X [ !  partial.records ( X , isMissing ) , , drop = FALSE ]
