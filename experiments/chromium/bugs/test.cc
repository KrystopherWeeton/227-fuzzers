void InvalidValue(const converter::LocationTrackerInterface &loc,
                  StringPiece type_name,
                  StringPiece value) override
{
    status_ = util::Status(
        util::error::INVALID_ARGUMENT,
        StrCat(GetLocString(loc), ": invalid value ", std::string(value),
               " for type ", std::string(type_name)));
}